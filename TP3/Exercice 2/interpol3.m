function y=interpol3(n)

y=0;

t = linspace(-1,1,n+1);

images = exp(t);

interpol2(t,images);

end