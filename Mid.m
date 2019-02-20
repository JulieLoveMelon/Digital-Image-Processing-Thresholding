clear all;
Image = imread('hw.jpg');
[m n] = size(Image);
h = imhist(Image);
number = 0;
for i = 0 : 255
    for j = 1 : m
        for k = 1 : n
            if(Image(j,k) == i) number = number + 1;
            end
        end
    end
   if(number >= m * n / 2) break;
   end 
end
Threshold = i
newImage = im2bw(Image,Threshold/255);
imshow(newImage);
%imwrite(Ibw,'Mid.jpg','jpg');