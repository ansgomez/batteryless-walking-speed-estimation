function [ out ] = lucas_kanade( ImageA, ImageB, noiseThreshold )
%LUCAS_KANADE Estimates the optical flow
%   estimates the optical flow between image ImageA and image ImageB


    % Settings
    % Window:   I(pr-wr, pc-wc)     ...         I(pr-wr, pc+wc)
    %               ...                               ...
    %           I(pr, pc-wc)        I(pr,pc)    I(pr, pc+wc)    
    %               ...                               ...
    %           I(pr+wr, pc-wc)     ...         I(pr+wr, pc+wc)    
    
    wr = 1;
    wc = 1;
    
    w = [1,2,1,2,4,2,1,2,1];
    W = diag(w);


    % check input images
    
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
         out = opticalFlow(velComponent, velComponent);
         return;
     end
     
     noiseThreshold = cast(noiseThreshold, datatype);
     
     %% Algorithm
     I(1, 1:numrows, 1:numcols) = double(ImageA);
     I(2, 1:numrows, 1:numcols) = double(ImageB);
     
     % Calculate Spatial Intensity Gradients I_x and I_y and temporal
     % Intensity Change I_t
     for pr = 1:(numrows-1)
        for pc = 1:(numrows-1)
            %Iy(nr,nc) = (-I(1,nr-2,nc) + 8*I(1,nr-1,nc) - 8*I(1,nr+1,nc) + I(1,nr+2,nc))/12;
            %Ix(nr,nc) = (-I(1,nr,nc-2) + 8*I(1,nr,nc-1) - 8*I(1,nr,nc+1) + I(1,nr,nc+2))/12;
            Iy(pr,pc) = I(1,pr,pc) - I(1,pr+1,pc);
            Ix(pr,pc) = I(1,pr,pc) - I(1,pr,pc+1);
            It(pr,pc) = I(1,pr,pc) - I(2,pr,pc);
        end
     end
          
     for pr = (1+wr):(numrows-1-wr)
        for pc = (1+wc):(numrows-1-wc)
            %B = [Ix(nr,nc)^2 Ix(nr,nc)*Iy(nr,nc);Iy(nr,nc)*Ix(nr,nc) Iy(nr,nc)^2];
            %b = [Ix(nr,nc)*It(nr,nc);Iy(nr,nc)*It(nr,nc)];
            A = [Ix(pr-1,pc-1) Iy(pr-1,pc-1); Ix(pr-1,pc) Iy(pr-1,pc); Ix(pr-1,pc+1) Iy(pr-1,pc+1);...
                Ix(pr,pc-1) Iy(pr,pc-1); Ix(pr,pc) Iy(pr,pc); Ix(pr,pc+1) Iy(pr,pc+1);...
                Ix(pr+1,pc-1) Iy(pr+1,pc-1); Ix(pr+1,pc) Iy(pr+1,pc); Ix(pr+1,pc+1) Iy(pr+1,pc+1);...
                ];
            %b = [It(nr-1,nc-1); It(nr-1,nc); It(nr-1,nc+1); It(nr,nc-1); It(nr,nc); It(nr,nc+1);...
            %    It(nr+1,nc-1); It(nr+1,nc); It(nr+1,nc+1)];
            
            % Threshold
            B11 = Ix(pr,pc)^2;
            B12 = Ix(pr,pc)*Iy(pr,pc);
            B21 = Ix(pr,pc)*Iy(pr,pc);
            B22 = Iy(pr,pc)^2;
            b1 = Ix(pr,pc)*It(pr,pc);
            b2 = Iy(pr,pc)*It(pr,pc);
            for ir = 1:wr
                for ic = 1:wc
                    B11 = B11 + Ix(pr+wr,pc+wc)^2 + Ix(pr+wr,pc-wc)^2 + Ix(pr-wr,pc+wc)^2 + Ix(pr-wr,pc-wc)^2;
                    B12 = B12 + Ix(pr+wr,pc+wc)*Iy(pr+wr,pc+wc) ...
                        + Ix(pr+wr,pc-wc)*Iy(pr+wr,pc-wc) ...
                        + Ix(pr-wr,pc+wc)*Iy(pr-wr,pc+wc) ...
                        + Ix(pr-wr,pc-wc)*Iy(pr-wr,pc-wc);
                    B21 = B21 + Iy(pr+wr,pc+wc)*Ix(pr+wr,pc+wc) ...
                        + Iy(pr+wr,pc-wc)*Ix(pr+wr,pc-wc) ...
                        + Iy(pr-wr,pc+wc)*Ix(pr-wr,pc+wc) ...
                        + Iy(pr-wr,pc-wc)*Ix(pr-wr,pc-wc);
                    B22 = B22 + Iy(pr+wr,pc+wc)^2 + Iy(pr+wr,pc-wc)^2 + Iy(pr-wr,pc+wc)^2 + Iy(pr-wr,pc-wc)^2;
                
                    b1 = b1 + Ix(pr+wr,pc+wc)*It(pr+wr,pc+wc) ...
                        + Ix(pr+wr,pc-wc)*It(pr+wr,pc-wc) ...
                        + Ix(pr-wr,pc+wc)*It(pr-wr,pc+wc) ...
                        + Ix(pr-wr,pc-wc)*It(pr-wr,pc-wc);
                    b2 = b2 + Iy(pr+wr,pc+wc)*It(pr+wr,pc+wc) ...
                        + Iy(pr+wr,pc-wc)*It(pr+wr,pc-wc) ...
                        + Iy(pr-wr,pc+wc)*It(pr-wr,pc+wc) ...
                        + Iy(pr-wr,pc-wc)*It(pr-wr,pc-wc);
                end
            end
            B = [B11 B12;B21 B22]
            b = [b1;b2];
            
            BM = A'*A
            pause;
            E = eig(B);
            if ( E(1) < noiseThreshold && E(2) < noiseThreshold )
                v(pr,pc,:) = [0 0];
            else
                %v(nr,nc,:) = inv(B)*A'*W*(-b);
                v(pr,pc,:) = inv(B)*(-b);
            end
        end
     end
          
     out = opticalFlow(v(:,:,1), v(:,:,2));

end

