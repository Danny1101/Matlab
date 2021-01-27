% Script exercice 3 - Question 2
%f(t,y) = cos(ty) sur [0,T], y0 ? R.

fct = @f2;
T = 7;

pas = .01;

N = ceil(T/pas);
y0 = 1;

affiche_courbe