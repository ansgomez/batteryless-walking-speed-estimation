% store images

x_size = 112;
y_size = 112;

fid = fopen('image0.bin', 'r');
img0 = fread(fid, x_size*y_size, 'uint8');
img0 = cast(reshape(img0, [x_size, y_size]), 'double');
fclose(fid);
fid = fopen('image1.bin', 'r');
img1 = fread(fid, x_size*y_size, 'uint8');
img1 = cast(reshape(img1, [x_size, y_size]), 'double');
fclose(fid);
fid = fopen('image2.bin', 'r');
img2 = fread(fid, x_size*y_size, 'uint8');
img2 = cast(reshape(img2, [x_size, y_size]), 'double');
fclose(fid);
fid = fopen('image3.bin', 'r');
img3 = fread(fid, x_size*y_size, 'uint8');
img3 = cast(reshape(img3, [x_size, y_size]), 'double');
fclose(fid);
fid = fopen('image4.bin', 'r');
img4 = fread(fid, x_size*y_size, 'uint8');
img4 = cast(reshape(img4, [x_size, y_size]), 'double');
fclose(fid);
fid = fopen('image5.bin', 'r');
img5 = fread(fid, x_size*y_size, 'uint8');
img5 = cast(reshape(img5, [x_size, y_size]), 'double');
fclose(fid);
fid = fopen('image6.bin', 'r');
img6 = fread(fid, x_size*y_size, 'uint8');
img6 = cast(reshape(img6, [x_size, y_size]), 'double');
fclose(fid);
fid = fopen('image7.bin', 'r');
img7 = fread(fid, x_size*y_size, 'uint8');
img7 = cast(reshape(img7, [x_size, y_size]), 'double');
fclose(fid);
fid = fopen('image8.bin', 'r');
img8 = fread(fid, x_size*y_size, 'uint8');
img8 = cast(reshape(img8, [x_size, y_size]), 'double');
fclose(fid);

mask = cast((img0 + img1 + img2 + img3 + img4 + img5 + img6 + img7 + img8)./9, 'uint8');

fid = fopen('mask.bin', 'w');
fwrite(fid, mask, 'uint8');
fclose(fid);