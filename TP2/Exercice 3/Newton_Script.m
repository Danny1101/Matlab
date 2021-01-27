% script de la m�thode de Newton d�finie par g(x) = x-f(x)/f'(x)

% g(x) = (x*x-1)/(2*x);

U0 = 0.5;


erreur_max = 10^-4;

%U0 = 0;
%[nbIter1,approx1] = Un_Newton( U0 ,s2, erreur_max,0);

fonction = g(@f);

tic
[nbIter0,approx0] = Newton(fonction, U0, erreur_max,0);
show('Le nombre d''it�rations utilis� par la m�thode de Newton est : ',nbIter0);
show('L''estimation du r�sultat par la m�thode de Newton est : ',approx0);
show('Le temps pris par la m�thode de Newton est : ',toc*1000,' millisecondes');