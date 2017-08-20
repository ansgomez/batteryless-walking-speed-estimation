clear all;

Img1 = rgb2gray(imread('images/image_rec0.png'));       % images/image8.png
Img2 = rgb2gray(imread('images/image_rec1.png'));       % images/image9.png

%window = [1 2 1;2 4 2;1 2 1];
%window = [0,0,1,0,0;0,0,4,0,0;1,4,6,4,1;0,0,4,0,0;0,0,1,0,0];
%window = [1,2,4,2,1;2,4,8,4,2;4,8,16,8,4;2,4,8,4,2;1,2,4,2,1];
window = fspecial('gaussian',9,2);
%window = ones(55,55);

%[vx,vy] = lucas_kanade(Img1,Img2,200,window);

ImgSq(:,:,1) = double(Img1);
ImgSq(:,:,2) = double(Img2);
[vx vy] = estimateOpticFlow2D_LK(ImgSq);
%[vx,vy] = lucas_kanade_pyramid(Img1,Img2, 100, 4, window);
flow = opticalFlow(vx, vy);

of = opticalFlowLK('NoiseThreshold',0.0019);
flowM = estimateFlow(of, Img1);
flowM = estimateFlow(of, Img2);

ImageA = Img1;
ImageB = Img2;
%noiseThreshold = 0.0019;

figure;
imshow(Img2);
hold on;
plot(flow, 'ScaleFactor', 1);
plot(flowM, 'ScaleFactor', 1);
hold off;

