function [ vx, vy ] = lucas_kanade_pyramid( ImageA, ImageB, noiseThreshold, L, window )
%LUCAS_KANADE_PYRAMID Estimates the optical flow
%   estimates the optical flow between image ImageA and image ImageB


    % Settings
    % Window:   I(pr-wr, pc-wc)     ...         I(pr-wr, pc+wc)
    %               ...                               ...
    %           I(pr, pc-wc)        I(pr,pc)    I(pr, pc+wc)    
    %               ...                               ...
    %           I(pr+wr, pc-wc)     ...         I(pr+wr, pc+wc)    
    
    if nargin == 3
        L = 4;          % Depth of Pyramid (# representations)
    % Use given Window
    elseif nargin == 5
        if ( mod(size(window, 1), 2) == 1 && mod(size(window, 2), 2) == 1 )
            wr = (size(window, 1)-1)/2;
            wc = (size(window, 2)-1)/2;
        else
            error('Invalid Window Size! mod(size(window, 1), 2) and mod(size(window, 2), 2) need to be 1');
        end
        wwind = window;
    end
       
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
     
     %% Build Pyramid Representations
     I = build_pyramid(double(ImageA),L);
     J = build_pyramid(double(ImageB),L);
     
%      for( l = 1:L )
%          clear img;
%          img(1:floor(numrows/(2^(l-1))), 1:floor(numcols/(2^(l-1)))) = uint8(I(l, 1:floor(numrows/(2^(l-1))), 1:floor(numcols/(2^(l-1)))));
%          size(img)
%          imshow(img);
%          figure;
%      end
     
     %% Algorithm
     vx = zeros(floor(numrows/(2^(L-1))), floor(numcols/(2^(L-1))));
     vy = vx;
     
     for l = L:-1:1
         nr = floor(numrows/(2^(l-1)));
         nc = floor(numcols/(2^(l-1)));

         clear img1 img2;
         img1(1:nr, 1:nc) = uint8(I(l, 1:nr, 1:nc));
         img2(1:nr, 1:nc) = uint8(J(l, 1:nr, 1:nc));
         % Displace pixels of img1 using estimates of coarser level
         for pr = (1+wr):(floor(nr/2)-1-wr)
             for pc = (1+wc):(floor(nc/2)-1-wc)
                 dx = floor(2*(pr+vx(pr,pc)));
                 dy = floor(2*(pc+vy(pr,pc)));
                 if ( dx-1 > 0 && dy-1 > 0 && dx < nr && dy < nc )
                     img1(dx, dy) = uint8(I(l, 2*pr, 2*pc));
                     img1(dx-1, dy) = uint8(I(l, 2*pr-1, 2*pc));
                     img1(dx-1, dy-1) = uint8(I(l, 2*pr-1, 2*pc-1));
                     img1(dx, dy-1) = uint8(I(l, 2*pr, 2*pc-1));
                 end
             end
         end
         
         [vx, vy] = lucas_kanade(img1, img2, noiseThreshold, window);
         
         if true
            figure;
            hold on;
            imshow(img1);
            plot(opticalFlow(vx, vy), 'ScaleFactor', 1);
            hold off;
         end

     end
     
end

