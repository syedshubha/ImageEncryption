%Image encryption and decryption project using password and randomness

clear all;
close all;
clc;

%Use commands in each case
s= initial();

[S f I]= imload(s);

global key;
key= password(s);

if s== 'encrypt'
    J=encrypt(I,key);
else
    J=decrypt(I,key);
end

m= strcat(s,'ed image');
close all
clc
imshow(J);
title(m);

pause(2);
clc
close all
k=3;

while(k==3)
k= input('\n\n    Do you want to replace the source image with output image? \n     1.Y    2.N \n   Enter 1 or 2  :     ');

if k==1
imwrite(J,S,f);
s=strcat(s,'ed image is saved replacing the source image');
clc;
fprintf(s);
else if k==2 
        clc;
fprintf('image not saved');
    else
        clc
        k=3;
    end
end
end

close all     %  1234567890a?
