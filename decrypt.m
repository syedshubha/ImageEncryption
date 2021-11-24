function J= decrypt(I,key)
%decrypts image with given password. Password must match!

J=I;

[row col]= size(J);

fprintf('decrypting......., please wait.....');

gum= dec2bin(key);
num= (bin2dec(gum))';

%

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

a= floor(row/2);
b= floor(col/2);

clear k;
k=1;
for i=1: a
    for j=1:b
        J(i,j)= bitxor(J(i,j),k1(k));
        k=k+1;
    end
    imshow(J);
    title('decrypting...');
end

clear k;
k=1;
for i=1: a
    for j=b+1:col
        J(i,j)= bitxor(J(i,j),k2(k));
        k=k+1;
    end
   imshow(J);
    title('decrypting...');
end


clear k;
k=1;
for i=a+1:row
    for j=1:b
        J(i,j)= bitxor(J(i,j),k3(k));
        k=k+1;
    end    
    imshow(J);
    title('decrypting...');
end

clear k;
k=1;
for i=a+1:row
    for j=b+1:col
        J(i,j)= bitxor(J(i,j),k4(k));
        k=k+1;
    end
    imshow(J);
    title('decrypting...');
end

I= J;

clear vec
vec= rndper(num);

rp= seed(vec(1:6));
cp= seed(vec(7:12));

rng(cp);
pc= randperm(col);
for i=1:col
    clear j
    j= pc(i);
    J(:,j)= I(:,i);
    imshow(J);
    title('decrypting');
end

I=J;
rng(rp);
pr= randperm(row);
for i=1:row
    clear j
    j= pr(i);
    J(j,:)= I(i,:);
    imshow(J);
    title('decrypting');
end

clc
end
