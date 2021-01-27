function [inter,approx] = Secante(fonction,a,b,erreur_max,always0)

% define g1(x) = fonction(x) - f(s) = 0 pour la méthode de la sécante
coeff = (fonction(b)-fonction(a))/(b-a);
%ajustement = fonction(b) - coeff*b;

%xn = -ajustement/coeff;
xn = a - fonction(a)/coeff;
clear coeff;        % t'as accompli ton rôle, alors a +
fun = fonction(xn); % pas super mauvais pour la RAM, mais super bon pour le CPU :)
if abs(fun) <= erreur_max
    approx = xn;
    inter = always0;
elseif fonction(b)*fun<0 % on lance la récursivité en gardant b fixe !
    clear fun;  % Optimisation, supposons qu'on devra atteindre 1000 itération,
                % ça fera 8000 octets de perdu stupidement et inutilement,
                % en supposant que le type est double
    [inter,approx] = Secante(fonction,xn,b,erreur_max,always0+1); % appel recursif appel recursif :)
else                % on lance la récursivité en gardant 'a' fixe !
    clear fun;  % Voir un peu en haut
    [inter,approx] = Secante(fonction,a,xn,erreur_max,always0+1); % Hop hop
end

end