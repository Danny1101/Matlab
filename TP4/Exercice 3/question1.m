% Script exercice 3 - Question 1
% f(t,y) = y sur [0,T], y0 ? R.

fct = @f1;
T = 7;

pas = .01;

N = ceil(T/pas);
y0 = 1;

affiche_courbe