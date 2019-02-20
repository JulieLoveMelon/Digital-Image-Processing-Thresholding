clear all;
Image=imread('hw.jpg');
threshold = 0.5 * (double(min(Image(:)))+double(max(Image(:))));
done = false;
while ~done
    g = Image >= threshold;
    Tnext = 0.5 *(mean(Image(g)) + mean(Image(~g)));
    done = abs(threshold - Tnext) < 12;
    threshold = Tnext;
end;
newImage = im2bw(Image,threshold/255);
threshold
imshow(newImage);