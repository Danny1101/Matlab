function k = coeffsCutta4(ti,yi,h,fct)

k = zeros(1,4);

k(1) = h*fct(ti,yi);
k(2) = h*fct(ti + h/2,yi + k(1)/2);
k(3) = h*fct(ti + h/2,yi + k(2)/2);
k(4) = h*fct(ti + h,yi + k(3));
end