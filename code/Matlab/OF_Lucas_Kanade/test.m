clear all;

Img1 = rgb2gray(imread('images/image8.png'));
Img2 = rgb2gray(imread('images/image9.png'));

of = opticalFlowLK('NoiseThreshold',0.0015);
%of = opticalFlowHS();

flow = estimateFlow(of, Img1);
flow = estimateFlow(of, Img2);

imshow(Img1);
hold on;
plot(flow, 'ScaleFactor', 3);
hold off;