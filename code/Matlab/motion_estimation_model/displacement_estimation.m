function [dx, dy] = displacement_estimation(OF_x, OF_y)
%DISPLACEMENT_ESTIMATION estimates the the displacement between two images.
%
%   [dx, dy] = DISPLACEMENT_ESTIMATION(OF_x, OF_y, blocksize, searcharea)
%   estimates the displacmeent vector between two images, given the optical
%   flow field between the two images.
%   The function returns a displacement vector.
%
%   blocksize = [blocksize_x blocksize_y];
%   searcharea = [searcharea_x_neg searcharea_x_pos searcharea_y_neg searcharea_y_pos];
%
%   Author: Thomas Schalch, 2016, ETHZ

    % check inputs
    if ( size(OF_y) ~= size(OF_x) )
        error('The two optical flow field components OF_X and OF_y need to have the same dimensions!');
    end

    % Custom Method
    
    zero_flags = zeros(2,2);
    count_non_zero = 0;
	
	if ( OF_x(1,1) == 0 && OF_y(1,1) == 0 )
		zero_flags(1,1) = 1;
    else
		count_non_zero = count_non_zero + 1;
	end
	if ( OF_x(1,2) == 0 && OF_y(1,2) == 0 )
		zero_flags(1,2) = 1;
    else
		count_non_zero = count_non_zero + 1;
	end
	if ( OF_x(2,1) == 0 && OF_y(2,1) == 0 )
		zero_flags(2,1) = 1;
    else
		count_non_zero = count_non_zero + 1;
	end
	if ( OF_x(2,2) == 0 && OF_y(2,2) == 0 )
		zero_flags(2,2) = 1;
    else
		count_non_zero = count_non_zero + 1;
	end

    if count_non_zero == 0
    	% All vectos are zero
    	dx = 0;
    	dy = 0;
    	
    elseif ( zero_flags(1,1) == 0 ) && (( OF_x(1,1) == OF_x(1,2) && OF_y(1,1) == OF_y(1,2) ) || ...
        ( OF_x(1,1) == OF_x(2,1) && OF_y(1,1) == OF_y(2,1) ) || ...
        ( OF_x(1,1) == OF_x(2,2) && OF_y(1,1) == OF_y(2,2) ))
        % Two common non-zero vectors
    	dx = OF_x(1,1);
    	dy = OF_y(1,1);
    elseif ( zero_flags(2,2) == 0 ) && (( OF_x(2,2) == OF_x(2,1) && OF_y(2,2) == OF_y(2,1) ) || ...
        ( OF_x(2,2) == OF_x(1,2) && OF_y(2,2) == OF_y(1,2) ))
        % Two common non-zero vectors
    	dx = OF_x(2,2);
    	dy = OF_y(2,2);
    elseif ( zero_flags(1,2) == 0 ) && ( OF_x(1,2) == OF_x(2,1) && OF_y(1,2) == OF_y(2,1) )
        % Two common non-zero vectors
    	dx = OF_x(1,2);
    	dy = OF_y(1,2);

	else
		% Take average of all non-zero vectors	
		dx = (OF_x(1,1) + OF_x(1,2) + OF_x(2,1) + OF_x(2,2))/count_non_zero;
		dy = (OF_y(1,1) + OF_y(1,2) + OF_y(2,1) + OF_y(2,2))/count_non_zero;
	end
end

