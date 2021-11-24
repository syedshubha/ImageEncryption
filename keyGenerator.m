function y= keyGenerator(k,ll)
%generates key for extra security

format long
clear y
clear a
clear b
clear c

p= ll(1);
q= ll(2);


   tot= p*q;
   po= floor(tot/3);
   
   a= k(1);
   rng('default');
   rng(a,'twister');
   y(1:po)= randi([0 255],1,po);   
   
   b= k(2);
   rng('default');
   rng(b,'twister');
   y(po+1:2*po)= randi([0 255],1,po);

   c= k(3);
   rng('default');
   rng(c,'twister');
   y(2*po+1:tot)= randi([0 255],1,tot-2*po);


end