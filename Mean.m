clc;
clear all;
Image = imread('hw.jpg');
h = imhist(Image);
%% 通过灰度均值二值化
vally = [];
for i = 2:255
    if h(i-1) > h(i) && h(i+1) > h(i)
        vally = [vally i];
    end
end
Threshold = mean(vally);
newImage = im2bw(Image,Threshold/255);
Threshold
figure, imshow(newImage);