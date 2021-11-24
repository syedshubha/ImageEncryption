function p= password(s)
%ask for passward

p='default';

while length(p) < 12
    clear st
  if s=='encrypt'
  st= input('Enter a password of minimum 12 characters. You should use no line break. Use capital letters, small letters, digits, special charcters (>, ? etc.) to make a strong password. \n','s');
  else
  st=input('Enter the password to decrypt image: ','s');
  end
clear p
p=st;
clc
end
end