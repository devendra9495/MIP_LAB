clc; clear all; close all;
A=imread('cameraman.tif');
i1=imnoise(A,'Gaussian',0.05,0.06);
figure, imshow(i1);
i2=imnoise(A,'salt & pepper',0.04);
figure, imshow(i2);
i3=imnoise(A,'speckle',0.06);
figure, imshow(i3);
title('speckle');
title('salt & pepper')
title('Gaussian')

% calculating psnr 
[peaksnr1]=psnr(A,i1);
[peaksnr2]=psnr(A,i2);
[peaksnr3]=psnr(A,i3);

%8.2
% design 3x3 mask
m1=1/9*ones(3,3);
% design 5x5 mask
m2=1/25*ones(5,5);


% filter by 3x3 mask 
filtered1=conv2(i1,m1);
figure, imshow(filtered1, []);
title('Gaussian')
filtered2=conv2(i2,m1);
figure, imshow(filtered2, []);
title('salt & pepper')
filtered3=conv2(i3,m1);
figure, imshow(filtered3, []);
title('speckle');

% filter by 5x5 mask 
filtered11=conv2(i1,m2);
figure, imshow(filtered11, []);
title('Gaussian')
filtered22=conv2(i2,m2);
figure, imshow(filtered22, []);
title('salt & pepper')
filtered33=conv2(i3,m2);
figure, imshow(filtered33, []);
title('speckle');


%8.3 median filter 
filtered1=medfilt2(i1);
figure, imshow(filtered1, []);
title('medfilt_i1');
filtered2=medfilt2(i2);
figure, imshow(filtered2, []);
title('medfilt_i2');
filtered3=medfilt2(i3);
figure, imshow(filtered3, []);
title('medfilt_i3');


% calculating psnr 
[peaksnr4]=psnr(A,filtered1);
[peaksnr5]=psnr(A,filtered2);
[peaksnr6]=psnr(A,filtered3);


