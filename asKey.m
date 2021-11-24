function k =  asKey(key,oo)
%call keygenerator to generate some key to exor

clear k

row=oo(1);
col= oo(2);
m= oo(3);
pass= key;
gum= dec2bin(pass);
num= (bin2dec(gum))';

a= floor(row/2);
b= floor(col/2);


k1= keyGenerator(num(1:3),[a,b]);
k4= keyGenerator(num(4:6), [row-a,col-b]);
k2= keyGenerator(num(7:9), [row-a,col]);
k3= keyGenerator(num(10:12), [row,  col-b]);


if m==1
k=k1;
else if m==2
k=k2;
else if m==3
k=k3;
else
k=k4;
end
end
end
end
