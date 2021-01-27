function y=interpol1(X,Y,x)

% L(x) = N(x)/D(x)

 L = Nominateur(X,x)./Denominateur(X);
 L = L';
 y = Y*L;

end