function [A B J]= imload(s)
%load image and make it suitable to perform

clc
A= strcat(input('Enter the location of the source image i.e (  H:\\project\\images  ) :\n', 's'),'\',input('\nEnter file name:    ','s'),'.');
B= input('\nEnter file format, i.e, jpg:     ','s');
A= strcat(A,B);

I= imread(A,B);
clc;

s= strcat('This image will be:...',s,'ed after a few steps');

fprintf('\n\n\n\t\tloading source image.......');
pause(1);
clc;
imshow(I);
title(s);
pause(4);
close all;

l= size(I);

if length(l)==2
J=I;
else
J= rgb2gray(I);
end

end
