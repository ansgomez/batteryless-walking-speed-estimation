function [ I ] = build_pyramid( Img, L )
%BUILD_PYRAMID Build pyramid representation of an image with depth L

    numrows = size(Img,1);
    numcols = size(Img,2);

    I(1, 1:numrows, 1:numcols) = Img;
    
    for l = 2:L
        f = (2^(l-1));
        for pr = 1:floor(numrows/f)
            for pc = 1:floor(numcols/f)
                I(l, pr, pc) = floor((I(l-1, 2*pr, 2*pc) + ...
                                I(l-1, 2*pr-1, 2*pc) + ...
                                I(l-1, 2*pr-1, 2*pc-1) + ...
                                I(l-1, 2*pr, 2*pc-1)) / 4);
            end
        end
    end
end

