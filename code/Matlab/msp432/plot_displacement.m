% store images

x_size = 1;
y_size = 1;

Img1 = rgb2gray(imread('../images/image_rec1_1.png'));       % images/image8.png
Img2 = rgb2gray(imread('../images/image_rec2_1.png'));       % images/image9.png

fid = fopen('../images/image0.bin', 'w');
fwrite(fid, Img1, 'uint8');
fclose(fid);
fid = fopen('../images/image1.bin', 'w');
fwrite(fid, Img2, 'uint8');
fclose(fid);

fid = fopen('../../Python/d0_msp.bin', 'r');
dx = fread(fid, x_size*y_size, 'int8');
fclose(fid);
fid = fopen('../../Python/d1_msp.bin', 'r');
dy = fread(fid, x_size*y_size, 'int8');
fclose(fid);

dx = cast(reshape(dx, [y_size, x_size]), 'int8');
dy = cast(reshape(dy, [y_size, x_size]), 'int8');

histogram2(dx(:),dy(:));

