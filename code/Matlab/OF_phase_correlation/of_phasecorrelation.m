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
     for pr = 3:(numrows-2)
        for pc = 3:(numrows-2)
            Iy(pr,pc) = (-I(1,pr-2,pc) + 8*I(1,pr-1,pc) - 8*I(1,pr+1,pc) + I(1,pr+2,pc))/12;
            Ix(pr,pc) = (-I(1,pr,pc-2) + 8*I(1,pr,pc-1) - 8*I(1,pr,pc+1) + I(1,pr,pc+2))/12;
            %Iy(pr,pc) = floor((I(1,pr-1,pc) - I(1,pr+1,pc))/2);
            %Ix(pr,pc) = floor((I(1,pr,pc-1) - I(1,pr,pc+1))/2);
            It(pr,pc) = ((I(1,pr,pc) - I(2,pr,pc))/2);
        end
     end
          
     for pr = (3+wr):(numrows-2-wr)
        for pc = (3+wc):(numcols-2-wc)
            
            % B = [B11 B12;B12 B22];    b = [-b1;-b2];
            B11 = 0; B12 = 0; B22 = 0; b1 = 0; b2 = 0;
            for ir = -wr:wr
                for ic = -wc:wc
                    B11 = B11 + wwind(ir+wr+1,ic+wc+1)*Ix(pr+ir,pc+ic)^2;
                    B12 = B12 + wwind(ir+wr+1,ic+wc+1)*Ix(pr+ir,pc+ic)*Iy(pr+ir,pc+ic);
                    B22 = B22 + wwind(ir+wr+1,ic+wc+1)*Iy(pr+ir,pc+ic)^2;
                
                    b1 = b1 - wwind(ir+wr+1,ic+wc+1)*Ix(pr+ir,pc+ic)*It(pr+ir,pc+ic);
                    b2 = b2 - wwind(ir+wr+1,ic+wc+1)*Iy(pr+ir,pc+ic)*It(pr+ir,pc+ic);
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

