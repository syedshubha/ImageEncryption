function y= rndper(source)
%randomly permutates an array

clear x
clear y
sed= seed(source);
rng(mod(sed,2^31));
x= randperm(length(source));
for i=1:length(x)
    y(i)= source(x(i));
end
end
