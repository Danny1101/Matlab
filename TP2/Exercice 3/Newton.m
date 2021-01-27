function [nbIter,approx] = Newton(func,U0, erreur_max,always0)
%UN_NEWTON Summary of this function goes here
%   Detailed explanation goes here
image = double(func(U0));
if abs(U0 - image) <= erreur_max % on sors de la recursivité
    approx = U0;
    nbIter = always0;
else
    [nbIter,approx] = Newton(func,image,erreur_max,always0+1);
end

end

