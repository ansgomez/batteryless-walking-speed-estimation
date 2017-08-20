numpixels_x = 112;                          % Image Size X [pixels]
numpixels_y = 112;                          % Image Size Y [pixels]

% read mask
fid = fopen('mask.bin', 'r');
mask_raw = reshape(fread(fid, numpixels_x*numpixels_y, 'uint8'), [numpixels_x numpixels_y]);
fclose(fid);

% process mask
mask_max = max(mask_raw(:));
mask = mask_raw + 256 - mask_max;

% create/store PNG image of mask
mask_double = cast(mask, 'double');
mask_double = (mask_double-min(mask_double(:)))/(max(mask_double(:)) - min(mask_double(:)));
imwrite(reshape(mask_double, [numpixels_x numpixels_y]), 'mask.png');

% read image
fid = fopen('raw_image6_2.bin', 'r');
image = reshape(fread(fid, numpixels_x*numpixels_y, 'uint8'), [numpixels_x numpixels_y]);
fclose(fid);

% calculate uncompensated raw image
image_raw = mask - image;

% create/store PNG of raw image
img_double = cast(image_raw, 'double');
img_double = (img_double-min(img_double(:)))/(max(img_double(:)) - min(img_double(:)));
imwrite(reshape(img_double, [numpixels_x numpixels_y]), 'image_raw.png');