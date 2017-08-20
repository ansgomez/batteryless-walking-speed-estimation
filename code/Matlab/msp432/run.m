%% Create the serial object
serialObject = serial('/dev/tty.usbmodem00000001', 'BaudRate', 115200, 'DataBits', 8, 'StopBits', 1, 'OutputBufferSize', 13000, 'Timeout', 10);
fopen(serialObject);

%% send images
Img1 = rgb2gray(imread('../images/image_rec1_1.png'));       % images/image8.png
Img2 = rgb2gray(imread('../images/image_rec2_1.png'));       % images/image9.png
fprintf(serialObject, cast(Img1, 'char'));
fprintf(serialObject, cast(Img2, 'char'));
fprintf(serialObject, cast(0, 'char'));

dx_exp = fread(serialObject, 14*14, 'int8');
dy_exp = fread(serialObject, 14*14, 'int8');
dx_exp = cast(reshape(dx_exp, [14, 14]), 'int8');
dy_exp = cast(reshape(dy_exp, [14, 14]), 'int8');

histogram2(dx_exp(:),dy_exp(:));

%% Clean up the serial object
fclose(serialObject);
delete(serialObject);
clear serialObject;