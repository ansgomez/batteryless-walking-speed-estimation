function [dx, dy] = displacement_estimation_HIST(OF_x, OF_y, searcharea)
%DISPLACEMENT_ESTIMATION_AVG estimates the the displacement between two images.
%
%   [dx, dy] = DISPLACEMENT_ESTIMATION_AVG(OF_x, OF_y, blocksize, searcharea)
%   estimates the displacmeent vector between two images, given the optical
%   flow field between the two images.
%   The function returns a displacement vector.
%   This function calculates the estimation with the HISTOGRAM method.
%
%   Author: Thomas Schalch, 2016, ETHZ

    searcharea_x_neg = searcharea(1);
    searcharea_x_pos = searcharea(2);
    searcharea_y_neg = searcharea(3);
    searcharea_y_pos = searcharea(4);

    % check inputs
    if ( size(OF_y) ~= size(OF_x) )
        error('The two optical flow field components OF_X and OF_y need to have the same dimensions!');
    end

    % Histogram Method
    histo = zeros(searcharea_x_pos-searcharea_x_neg+1, searcharea_y_pos-searcharea_y_neg+1);
    for nbx = 1:length(OF_x(:,1))
        for nby = 1:length(OF_x(1,:))
            histo(OF_x(nbx,nby)-searcharea_x_neg+1,OF_y(nbx,nby)-searcharea_y_neg+1) = ...
                histo(OF_x(nbx,nby)-searcharea_x_neg+1,OF_y(nbx,nby)-searcharea_y_neg+1) + 1;
        end
    end
    
    numblocks = length(OF_x(:,1)) * length(OF_x(1,:));
    histo(-searcharea_x_neg+1,-searcharea_y_neg+1) = histo(-searcharea_x_neg+1,-searcharea_y_neg+1)/numblocks;

    [temp, idx_x] = max(histo);
    [~, idx_y] = max(temp);

    dx = (idx_x(idx_y) + searcharea_x_neg - 1 );
    dy = (idx_y + searcharea_y_neg - 1);
end

