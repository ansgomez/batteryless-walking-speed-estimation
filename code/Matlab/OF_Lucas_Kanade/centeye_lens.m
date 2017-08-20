f = 4e-3;                   % focal length (Brennweite)
pxdiff = 25e-6;             % difference between to pixels (25µm)
h_px = 112;                  % Height of die in pixels
w_px = 112;                  % Width of die in pixels
h = h_px*pxdiff;             % Height of die in m
w = w_px*pxdiff;             % Width of die in m

% field of view
alpha_h = 2*asin(h/2/f);     % vertical field of view
alpha_w = 2*asin(w/2/f);     % horizontal field of view

%
d = 1.8;                    % distance of object to lense in m
b = h/f * d                 % height of image
px_height = b/h_px          % height of one pixel in the image in m