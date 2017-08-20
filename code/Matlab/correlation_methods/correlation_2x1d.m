function [ vx, vy ] = correlation_1d( ImageA, ImageB )
%correlation_1d Motion estimation
%   estimates the displacement between image ImageA and image ImageB in y
%   direction (1 dimensional)

    %% Settings
    blocksize_x = 8;
    blocksize_y = 8;
    searcharea_x = 4;
    searcharea_y = 4;

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
     
     
     %% Algorithm
     I(1, 1:numrows, 1:numcols) = double(ImageA);
     I(2, 1:numrows, 1:numcols) = double(ImageB);
     
     numpixels_x = numcols;
     numpixels_y = numrows;
     numblocks_x = floor(numpixels_x/blocksize_x);
     numblocks_y = floor(numpixels_y/blocksize_y);
     
     vx = zeros(numblocks_x, numblocks_y);
     vy = zeros(numblocks_x, numblocks_y);
          
     for i_block_x = 1:numblocks_x
         for i_block_y = 1:numblocks_y
             
             % for each block:
             
             % Index start number of considered block in Image 1
             p_I1start_x = (i_block_x * blocksize_x - floor(blocksize_x/2));
             p_I1start_y = (i_block_y * blocksize_y - floor(blocksize_y/2));
             
             mincost = 9999;
             
             for i_search_x = (-searcharea_x):searcharea_x
                     
                 % for each possible x-displacement within searcharea:
                 % calculate cost function

                 % Index start number of considered block in Image 2
                 p_I2start_x = (i_block_x * blocksize_x - floor(blocksize_x/2)) + i_search_x;
                 p_I1_y = (i_block_y * blocksize_y - floor(blocksize_y/2));
                 p_I2_y = p_I1_y;

                 % Calculate Cost function
                 cost = 0;
                 for i_x = 1:blocksize_x
                     p_I1_x = p_I1start_x + i_x;
                     p_I2_x = p_I2start_x + i_x;

                     % Do not exceed image dimensions!
                     if ( p_I1_x < 1 ) p_I1_x = 1; end
                     if ( p_I1_x > numpixels_x ) p_I1_x = numpixels_x; end
                     if ( p_I2_x < 1 ) p_I2_x = 1; end
                     if ( p_I2_x > numpixels_x ) p_I2_x = numpixels_x; end

                     % Sum of Absolute Differences (SAD)
                     cost = cost + abs(I(1, p_I1_y, p_I1_x) - I(2, p_I2_y, p_I2_x));
                 end

                 if ( cost < mincost )
                     mincost = cost;
                     vx((i_block_y * blocksize_y - floor(blocksize_y/2)), (i_block_x * blocksize_x - floor(blocksize_x/2))) = i_search_x;
                     %vx(i_block_y, i_block_x) = i_search_x;
                 end
             end
             
             mincost = 9999;
             for i_search_y = (-searcharea_y):searcharea_y
                     
                 % for each possible y-displacement within searcharea:
                 % calculate cost function

                 % Index start number of considered block in Image 2
                 p_I1_x = (i_block_x * blocksize_x - floor(blocksize_x/2));
                 p_I2_x = p_I1_x;
                 p_I2start_y = (i_block_y * blocksize_y - floor(blocksize_y/2)) + i_search_y;

                 % Calculate Cost function
                 cost = 0;
                 for i_y = 1:blocksize_y
                     p_I1_y = p_I1start_y + i_y;
                     p_I2_y = p_I2start_y + i_y;

                     % Do not exceed image dimensions!
                     if ( p_I1_y < 1 ) p_I1_y = 1; end
                     if ( p_I1_y > numpixels_y ) p_I1_y = numpixels_y; end
                     if ( p_I2_y < 1 ) p_I2_y = 1; end
                     if ( p_I2_y > numpixels_y ) p_I2_y = numpixels_y; end

                     % Sum of Absolute Differences (SAD)
                     cost = cost + abs(I(1, p_I1_y, p_I1_x) - I(2, p_I2_y, p_I2_x));
                 end

                 if ( cost < mincost )
                     mincost = cost;
                     vy((i_block_y * blocksize_y - floor(blocksize_y/2)), (i_block_x * blocksize_x - floor(blocksize_x/2))) = i_search_y;
                     %vy(i_block_y, i_block_x) = i_search_y;
                 end
             end
 
            
         end
     end

end

