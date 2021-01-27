% Script exercice 3 - Question 3
% f (t, y) = 1 + y2 sur [0, t1 ? ?], y0 ? R. ou` ? ? 0 et t1 = ?/2 ? arctan(y0),

fct = @f1;

nu = 0;
y0 = 1;

t1 = pi/2 - atan(y0);
T = t1-nu;
clear t1;

pas = .01;

N = ceil(T/pas);


affiche_courbe