img = imread('input.jpg');
%img = imresize((img),[430 554]);
img = rgb2gray(img);

imgTrans = img';

img1D = imgTrans(:);

imgHex = dec2hex(img1D);

imgHex=cellstr(imgHex);

fid = fopen('input.txt', 'wt');

fprintf(fid, '%s\n', imgHex{:});

fclose(fid)