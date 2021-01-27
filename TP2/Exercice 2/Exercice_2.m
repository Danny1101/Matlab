% script Exercice 2

% Étudions la fonction f(x) = x*x - 1 dans le domaine à définir [a,b]
% f est continue et dérivable inf fois
% f(1) = 0 et f(2) = 3 
% or f est strictement croissante sur ]0,inf[ donc on prendra a=1;b=2;
a=0.5;b=2;e=10^-4;

tic
[iterations,estimation_resultat] = dichotomie(a,b,e,0);
show('Le nombre d''itérations utilisé par la méthode dichotomique est : ',iterations);
show('L''estimation du résultat par la méthode dichotomique est : ',estimation_resultat);
show('Le temps pris par la méthode dichotomique est : ',toc*1000,' millisecondes');
