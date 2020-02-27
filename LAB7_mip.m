clc; close all; clear all; warning off;

i =imread('/home/devendra/Downloads/cameraman.jpeg');
figure, imshow(i);
title('i');

% Region of interest (ROI)
b=roipoly(i);
figure, imshow(b);
title('b');

%Sharpen the selected region of interest
H=fspecial('average');
% Selecting the type of 2-D filter
J=roifilt2(H,i,b);
% roifilt2 returns an image that consists of filtered values 
% for pixels in locations where BW contains 1's and unfiltered 
% values for pixels in locations where BW contains 0's.
figure, imshow(J);
title('J');