%clear all;

Img1 = rgb2gray(imread('../images/image_rec1_1.png'));       % images/image8.png
Img2 = rgb2gray(imread('../images/image_rec2_1.png'));       % images/image9.png

[vx,vy] = block_matching(Img1,Img2);
flow = opticalFlow(vx, vy);

% Show Histogram
histogram2(vx(:),vy(:));
xlabel('x-displacement');
ylabel('y-displacement');
%zlim([0 100]);

%of = opticalFlowLK('NoiseThreshold',0.0019);
%flowM = estimateFlow(of, Img1);
%flowM = estimateFlow(of, Img2);

%ImageA = Img1;
%ImageB = Img2;
%noiseThreshold = 0.0019;

figure;
imshow(Img2);
hold on;
plot(flow, 'ScaleFactor', 1);
%plot(flowM, 'ScaleFactor', 1);
hold off;

