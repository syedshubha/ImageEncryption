function J=encrypt(I,key)
%encrypts file 

J=I;

fprintf('Encrypting....., please wait..... ');
[row col]= size(J);

a= floor(row/2);
b= floor(col/2);

gum= dec2bin(key);
num= (bin2dec(gum))';


clear vec

vec= rndper(num);

rp= seed(vec(1:6));
cp= seed(vec(7:12));


%row rearrangement
rng(rp);
pr= randperm(row);
for i=1:row
    clear j
    j= pr(i);
    J(i,:)= I(j,:);
    imshow(J);
    title('encrypting');
end

I=J;

%column rearrangement
rng(cp);
pc= randperm(col);
for i=1:col
    clear j
    j= pc(i);
    J(:,i)= I(:,j);
    imshow(J);
    title('encrypting');
end


%more security with block and exor

for i=1:4
clear oo
clear ddd
oo= [ row col i];
ddd= asKey(key,oo);

if i==1
k1=ddd;
else if i==2
k2=ddd;
else if i==3
k3= ddd;
else
k4= ddd;
end
end
end
end


clear k;
k=1;
for i=1: a
    for j=1:b
        J(i,j)= bitxor(J(i,j),k1(k));
        k=k+1;
    end
    imshow(J);
        title('encrypting.......');
end

clear k;
k=1;
for i=1: a
    for j=b+1:col
        J(i,j)= bitxor(J(i,j),k2(k));
        k=k+1;
    end
    imshow(J);
        title('encrypting.......');
end


clear k;
k=1;
for i=a+1:row
    for j=1:b
        J(i,j)= bitxor(J(i,j),k3(k));
        k=k+1;
    end    
    imshow(J);
        title('encrypting.......');
end

clear k;
k=1;
for i=a+1:row
    for j=b+1:col
        J(i,j)= bitxor(J(i,j),k4(k));
        k=k+1;
    end
    imshow(J);
        title('encrypting.......');
end


clc
end
