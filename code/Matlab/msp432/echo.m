%% Create the serial object
serialObject = serial('/dev/tty.usbmodem00000001', 'BaudRate', 115200, 'DataBits', 8, 'StopBits', 1, 'OutputBufferSize', 13000, 'InputBufferSize', 13000, 'Timeout', 10);
fopen(serialObject);

%% send images
Img1 = rgb2gray(imread('../images/image_rec1_1.png'));       % images/image8.png
Img2 = rgb2gray(imread('../images/image_rec2_1.png'));       % images/image9.png
fprintf(serialObject, cast(Img1, 'char'));
temp = 0;
for i = 1:10000
    temp = temp + 1;
end
fprintf(serialObject, cast(Img2, 'char'));
fprintf(serialObject, cast(0, 'char'));

img1_msp = fread(serialObject, 112*112, 'uint8');
img2_msp = fread(serialObject, 112*112, 'uint8');
img1_msp = cast(reshape(img1_msp, [112, 112]), 'uint8');
img2_msp = cast(reshape(img2_msp, [112, 112]), 'uint8');

figure;
imshow(img1_msp);
figure;
imshow(img2_msp);

%% Clean up the serial object
fclose(serialObject);
delete(serialObject);
clear serialObject;