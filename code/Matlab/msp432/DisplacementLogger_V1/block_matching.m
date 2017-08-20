function [ vx, vy ] = block_matching( ImageA, ImageB, blocksize, searcharea )
%block_matching Estimates the optical flow
%   estimates the displacement between image ImageA and image ImageB

    %% Settings
    blocksize_x = blocksize(1);
    blocksize_y = blocksize(2);

    searcharea_x_neg = searcharea(1);
    searcharea_x_pos = searcharea(2);
    searcharea_y_neg = searcharea(3);
    searcharea_y_pos = searcharea(4);

    %threshold = 1200;
    
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
     eff_numpixels_x = numpixels_x - (-searcharea_x_neg) - searcharea_x_pos;
     eff_numpixels_y = numpixels_y - (-searcharea_y_neg) - searcharea_y_pos;
     numblocks_x = floor(eff_numpixels_x/blocksize_x);
     numblocks_y = floor(eff_numpixels_y/blocksize_y);
     
     vx = zeros(numblocks_y, numblocks_x);
     vy = zeros(numblocks_y, numblocks_x);
     
     % Index start number of considered block in Image 1, Initialization
     p_I1start_x = (-searcharea_x_neg);
     
     for i_block_x = 0:(numblocks_x-1)         

         % Index start number of considered block in Image 1, Initialization
         p_I1start_y = (-searcharea_y_neg);
         
         for i_block_y = 0:(numblocks_y-1)
             
             % for each block:
             
             mincost = 65535;
             
             p_I2start_x = p_I1start_x + searcharea_x_neg;
             for i_search_x = (searcharea_x_neg):searcharea_x_pos
                 
                 p_I2start_y = p_I1start_y + searcharea_y_neg;
                 for i_search_y = (searcharea_y_neg):searcharea_y_pos
                     
                     % for each possible displacement within searcharea:                                          
                     % Calculate Cost function
                     cost = 0;
                     for i_x = 0:(blocksize_x-1)
                         for i_y = 0:(blocksize_y-1)
                             
                             p_I1_x = p_I1start_x + i_x;
                             p_I1_y = p_I1start_y + i_y;
                             p_I2_x = p_I2start_x + i_x;
                             p_I2_y = p_I2start_y + i_y;
                             
                             % Do not exceed image dimensions!
                             if ( p_I1_x < 0 ) error('exceeded image dimensions!'); end
                             if ( p_I1_x >= numpixels_x ) error('exceeded image dimensions!'); end
                             if ( p_I1_y < 0 ) error('exceeded image dimensions!'); end
                             if ( p_I1_y >= numpixels_y ) error('exceeded image dimensions!'); end
                             if ( p_I2_x < 0 ) error('exceeded image dimensions!'); end
                             if ( p_I2_x >= numpixels_x ) error('exceeded image dimensions!'); end
                             if ( p_I2_y < 0 ) error('exceeded image dimensions!'); end
                             if ( p_I2_y >= numpixels_y ) error('exceeded image dimensions!'); end
                             
                             %[p_I1_x p_I1_y p_I2_x p_I2_y]
                             % Sum of Absolute Differences (SAD)
                             cost = cost + (abs(I(1, p_I1_y+1, p_I1_x+1) - I(2, p_I2_y+1, p_I2_x+1)));
                             if (cost >= 4294967296)
                                 error('One cost value exceeded UINTMAX!');
                             end
                         end
                     end
                     
                     if ( cost < mincost )
                         mincost = cost;
                         %vx((i_block_y * blocksize_y - floor(blocksize_y/2)), (i_block_x * blocksize_x - floor(blocksize_x/2))) = i_search_x;
                         %vy((i_block_y * blocksize_y - floor(blocksize_y/2)), (i_block_x * blocksize_x - floor(blocksize_x/2))) = i_search_y;
                         vx(i_block_y+1, i_block_x+1) = i_search_x;
                         vy(i_block_y+1, i_block_x+1) = i_search_y;
                     end
                     
                     % Index start number of considered block in Image 2
                     p_I2start_y = p_I2start_y+1;
                 end
                 
                 % Index start number of considered block in Image 2
                 p_I2start_x = p_I2start_x+1;
             end
            
             %if ( cost < threshold )
             %    vx((i_block_y * blocksize_y - floor(blocksize_y/2)), (i_block_x * blocksize_x - floor(blocksize_x/2))) = 0;
             %    vy((i_block_y * blocksize_y - floor(blocksize_y/2)), (i_block_x * blocksize_x - floor(blocksize_x/2))) = 0;
             %end
             
             % Index start number of considered block in Image 1
             p_I1start_y = p_I1start_y + blocksize_y;
         end
         
         % Index start number of considered block in Image 1
         p_I1start_x = p_I1start_x + blocksize_x;
     end

end

