% Text to image conversion
% % Open the txt file
fid = fopen('output.txt', 'r');
% Scann the txt file 
%img = fscanf(fid, '%x', [1 inf]); 
img = fscanf(fid, '%2x', [430 554]); 
% Close the txt file
fclose(fid);
% restore the image
outImg = reshape(img,[430 554]);
outImg = outImg';
figure, imshow(outImg,[])