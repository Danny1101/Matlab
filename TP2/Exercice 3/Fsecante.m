function [inter,approx] = Fsecante(a,b,racine,erreur_max,always0)

% define g(x) = f(x) - racine = 0 pour la méthode de la sécante
coeff = (f(b)-f(a))/(b-a);
%ajustement = f(b) - coeff*b;

%xn = -ajustement/coeff;
xn = a - (f(a)-racine)/coeff;
clear coeff;        % t'as accompli ton rôle, alors a +
fun = f(xn)-racine; % pas super mauvais pour la RAM, mais super bon pour le CPU :)
if abs(fun) <= erreur_max
    approx = xn;
    inter = always0;
elseif (f(b)-racine)*fun<0 % on lance la récursivité en gardant b fixe !
    clear fun;  % Optimisation, supposons qu'on devra atteindre 1000 itération,
                % ça fera 8000 octets de perdu stupidement et inutilement,
                % en supposant que le type est double
    [inter,approx] = Fsecante(xn,b,racine,erreur_max,always0+1); % appel recursif appel recursif :)
else                % on lance la récursivité en gardant a fixe !
    clear fun;  % Voir un peu en haut
    [inter,approx] = Fsecante(a,xn,racine,erreur_max,always0+1);
end

end