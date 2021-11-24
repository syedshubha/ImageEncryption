function s=  initial()
%initialize project

fprintf('\n\n                  Image Encryption & Decryption Project using Password & Randomness\n\n               Made by-  Shubha(1606023), Sohan(1606007), Rayhan(1606022) & Farhan(1606024)\n\n\npress any key to continue........');
pause();
clc
x= input('Choose your action\n 1. Encrypt image file\n 2. Decrypt Image File\n\n   Enter 1 or 2\n    ');
if x==1
    s='encrypt';
else if x==2
    s= 'decrypt';
    else
        fprintf('Error!!!');
        clc;
        clear x;
        x= input('Choose your action\n 1. Encrypt image file\n 2. Decrypt Image file\n\n   Enter 1 or 2\n    ');
end

clc;
end