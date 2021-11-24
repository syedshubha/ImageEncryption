function y= seed(s)
%makes seed for randomness. It will generate different key for same set
%with different combination too

x= poly(s);
y=1;
for i=1:length(x)
    y= abs(y+x(i))+i;
end
y=mod(y,(2^32));
end