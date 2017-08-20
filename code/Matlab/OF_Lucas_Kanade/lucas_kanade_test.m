function [ vx, vy ] = lucas_kanade( ImageA, ImageB, noiseThreshold, window )
%LUCAS_KANADE Estimates the optical flow
%   estimates the optical flow between image ImageA and image ImageB


    % Settings
    % Window:   I(pr-wr, pc-wc)     ...         I(pr-wr, pc+wc)
    %               ...                               ...
    %           I(pr, pc-wc)        I(pr,pc)    I(pr, pc+wc)    
    %               ...                               ...
    %           I(pr+wr, pc-wc)     ...         I(pr+wr, pc+wc)    
    
    % No Window given
    if nargin == 3
        wr = 3;
        wc = 3;
        wwind = [1,2,4,8,4,2,1; ...
            2,4,8,16,8,4,2; ...
            4,8,16,32,16,8,4; ...
            8,16,32,64,32,16,8; ...
            4,8,16,32,16,8,4; ...
            2,4,8,16,8,4,2; ...
            1,2,4,8,4,2,1];
    % Use given Window
    elseif nargin == 4
        if ( mod(size(window, 1), 2) == 1 && mod(size(window, 2), 2) == 1 )
            wr = (size(window, 1)-1)/2;
            wc = (size(window, 2)-1)/2;
        else
            error('Invalid Window Size! mod(size(window, 1), 2) and mod(size(window, 2), 2) need to be 1');
        end
        wwind = window;
    % Error
    else
        error('Wrong number of input arguments!')
    end
    
    wnorm = sqrt(sum(sum(wwind.^2)));
    wwind = wwind./wnorm;
    
    % 2 wwind = [1,2,4,2,1;2,4,8,4,2;4,8,16,8,4;2,4,8,4,2;1,2,4,2,1];

    %% check input images
    
    % Dimensions fit?
    numrows = size(ImageA,1);
    numcols = size(ImageA,2);
    if ( numrows ~= size(ImageB,1) || numcols ~= size(ImageB,2) )
        error('The two images ImageA and ImageB need to have the same dimesnions!');
    end

     if isa(ImageA, 'double') 
         datatype = coder.const('double');
     else
         datatype = coder.const('single');
         if ~isa(ImageA, 'uint8') 
             ImageA = im2single(ImageA);
         end
     end
     if isa(ImageB, 'double') 
         datatype = coder.const('double');
     else
         datatype = coder.const('single');
         if ~isa(ImageB, 'uint8') 
             ImageB = im2single(ImageB);
         end
     end  
     
     if( (numrows == 0) || (numcols == 0) )
         velComponent = zeros(size(ImageA), datatype);
         vx = velComponent;
         vy = velComponent;
         return;
     end
     
     noiseThreshold = cast(noiseThreshold, datatype);
     
     %% Algorithm
     I(1, 1:numrows, 1:numcols) = double(ImageA);
     I(2, 1:numrows, 1:numcols) = double(ImageB);
     Iy = zeros(numrows-1,numcols-1);
     Ix = zeros(numrows-1,numcols-1);
     It = zeros(numrows-1,numcols-1);
     
     % Calculate Spatial Intensity Gradients I_x and I_y and temporal
     % Intensity Change I_t
     for pr = 2:(numrows-1)
        for pc = 2:(numrows-1)
            %Iy(nr,nc) = (-I(1,nr-2,nc) + 8*I(1,nr-1,nc) - 8*I(1,nr+1,nc) + I(1,nr+2,nc))/12;
            %Ix(nr,nc) = (-I(1,nr,nc-2) + 8*I(1,nr,nc-1) - 8*I(1,nr,nc+1) + I(1,nr,nc+2))/12;
            Iy(pr,pc) = floor((I(1,pr-1,pc) - I(1,pr+1,pc))/2);
            Ix(pr,pc) = floor((I(1,pr,pc-1) - I(1,pr,pc+1))/2);
            It(pr,pc) = floor((I(1,pr,pc) - I(2,pr,pc))/2);
        end
     end
          
     for pr = 2:(numrows-1)
        for pc = 2:(numcols-1)
            
            % B = [B11 B12;B12 B22];    b = [-b1;-b2];
            B11 = 0; B12 = 0; B22 = 0; b1 = 0; b2 = 0;
            for ir = -wr:wr
                if ( (pr+ir) > 1 && (pr+ir) < (numrows-1))
                    dr = pr+ir; enable = 1;
                else
                    dr = 1; enable = 0;
                end
                for ic = -wc:wc
                	if ( enable && (pc+ic) > 1 && (pc+ic) < (numcols-1))
                        dc = pc+ic; enable = 1;
                    else
                        dc = 1; enable = 0;
                    end
                    B11 = B11 + enable * wwind(ir+wr+1,ic+wc+1)*Ix(dr,dc)^2;
                    B12 = B12 + enable * wwind(ir+wr+1,ic+wc+1)*Ix(dr,dc)*Iy(dr,dc);
                    B22 = B22 + enable * wwind(ir+wr+1,ic+wc+1)*Iy(dr,dc)^2;
                
                    b1 = b1 - enable * wwind(ir+wr+1,ic+wc+1)*Ix(dr,dc)*It(dr,dc);
                    b2 = b2 - enable * wwind(ir+wr+1,ic+wc+1)*Iy(dr,dc)*It(dr,dc);
                end
            end
            
            % Calculate Eigenvalues of B
            traceB = B11+B22;
            detB = B11*B22 - B12^2;
            aux = sqrt(traceB^2/4 - detB);
            E1 = traceB/2 + aux;
            E2 = traceB/2 - aux;
            
            % Check Threshold
            if ( E1 < noiseThreshold && E2 < noiseThreshold )
                vx(pr,pc) = 0;
                vy(pr,pc) = 0;
            else
                % Use Cramer's Rule to find the solution
                vx(pr,pc) = (b1*B22 - B12*b2)/detB;
                vy(pr,pc) = (b2*B11 - B12*b1)/detB;
                %v(pr,pc,:) = B\b;
            end
        end
     end
end

