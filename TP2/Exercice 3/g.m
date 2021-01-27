function sortie = g( func )
%F Summary of this function goes here
%   Detailed explanation goes here

syms x(x) % identité
fun = func(x);
derivee = functionalDerivative(fun,x);

sortie = x - func(x)/(derivee(x)) ;

end

