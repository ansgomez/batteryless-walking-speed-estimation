function [ out ] = lucas_kanade( ImageA, ImageB, noiseThreshold )
%LUCAS_KANADE Estimates the optical flow
%   estimates the optical flow between image ImageA and image ImageB

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
     for nr = 1:(numrows-1)
        for nc = 1:(numrows-1)
            Iy(nr,nc) = I(1,nr,nc) - I(1,nr+1,nc);
            Ix(nr,nc) = I(1,nr,nc) - I(1,nr,nc+1);
            It(nr,nc) = I(1,nr,nc) - I(2,nr,nc);
        end
     end
     
     for nr = 2:(numrows-2)
        for nc = 2:(numrows-2)
            A = [Ix(nr-1,nc-1) Iy(nr-1,nc-1); Ix(nr-1,nc) Iy(nr-1,nc); Ix(nr-1,nc+1) Iy(nr-1,nc+1);...
                Ix(nr,nc-1) Iy(nr,nc-1); Ix(nr,nc+1) Iy(nr,nc+1);...
                Ix(nr+1,nc-1) Iy(nr+1,nc-1); Ix(nr+1,nc) Iy(nr+1,nc); Ix(nr+1,nc+1) Iy(nr+1,nc+1);...
                ];
            b = [It(nr-1,nc-1); It(nr-1,nc); It(nr-1,nc+1); It(nr,nc-1); It(nr,nc+1);...
                It(nr+1,nc-1); It(nr+1,nc); It(nr+1,nc+1)];
            
            % Threshold
            B = A'*A;
            E = eig(A'*A);
            if ( E(1) < noiseThreshold && E(2) < noiseThreshold )
                v(nr,nc,:) = [0 0];
            else
                v(nr,nc,:) = inv(B)*A'*(-b);
            end
        end
     end
     
     out = opticalFlow(v(:,:,1), v(:,:,2));

end

