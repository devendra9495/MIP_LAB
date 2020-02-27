clc; clear all; close all;
y=imread('/home/devendra/Downloads/cameraman.jpeg');
figure, imshow(y);
title('cameraman');
a=input('enter the value of a for gray level slicing');
b=input('enter the value of b for gray level slicing');

[m n]=size(y);
for i=1:m
    for j=1:n
        if(y(i,j)>=a & y(i,j)<=b);
            z(i,j)=max(max(y));

        
           else
            z(i,j)=0;
        end
    end
end

   figure, imshow(y, []);  
figure, imshow(z, []);