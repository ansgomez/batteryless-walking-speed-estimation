clear all;
w = 112;
h = 112;
image_size= w * h;

% Mask
file = fopen('images/mask.bin');
img_raw = fread(file, 2*image_size, 'uint8');
temp = uint16(256*img_raw(1:2:2*image_size) + img_raw(2:2:2*image_size));
mask = reshape(temp, w, h);

% Img 1
file = fopen('images/image1.bin');
img_raw = fread(file, 2*image_size, 'uint8');
temp = uint16(256*img_raw(1:2:2*image_size) + img_raw(2:2:2*image_size));
img1 = reshape(temp, w, h);


imshow(mask'-img1', [0 max(max(mask-img1))])