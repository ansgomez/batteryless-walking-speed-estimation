function [dx, dy] = displacement_estimation_AVG(OF_x, OF_y)
%DISPLACEMENT_ESTIMATION_AVG estimates the the displacement between two images.
%
%   [dx, dy] = DISPLACEMENT_ESTIMATION_AVG(OF_x, OF_y, blocksize, searcharea)
%   estimates the displacmeent vector between two images, given the optical
%   flow field between the two images.
%   The function returns a displacement vector.
%   This function calculates the AVERAGE of the non-zeo optical flow field vectors.
%
%   Author: Thomas Schalch, 2016, ETHZ

    % check inputs
    if ( size(OF_y) ~= size(OF_x) )
        error('The two optical flow field components OF_X and OF_y need to have the same dimensions!');
    end
    
    % Averaging
    count = 0;
    dx = 0;
    dy = 0;
    for nbx = 1:length(OF_x(:,1))
        for nby = 1:length(OF_x(1,:))
            if OF_x(nbx,nby) ~= 0 || OF_y(nbx,nby) ~= 0
                % -> only consider non-zero vectors!
                count = count + 1;
                dx = dx + OF_x(nbx,nby);
                dy = dy + OF_y(nbx,nby);
            end
        end
    end

    if count == 0
        dx = 0;
        dy = 0;
    else
        dx = (dx/count);
        dy = (dy/count);
    end
end

