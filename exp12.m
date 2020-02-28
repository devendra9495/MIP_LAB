clc; clear all; close all;
% exp 12
i=imread('cameraman.tif');
H=fspecial('disk',50);
figure, imshow(H, [])
blurredimage=imfilter(i,H,'replicate');
s=i-blurredimage;
s1=s*0.5;
deblurred=i+s1;
figure, imshow(i);
title('original')
figure, imshow(blurredimage);
title('blurredimage');

figure, imshow(deblurred);
title('deblurred');
