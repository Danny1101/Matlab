% script de la s�cante

% on a g(x) = (x^2 + 1) / (2*x)     Pr�alablement d�finie

% On d�finis nos constantes :
erreur_max = 10^-4;
a = 0.5; b = 2 ;

s1 = 0;
Un = s1;

k = 0;

% On prouve que g est monotone et g(0.5) = 0.25 - 1 = -0.75 < 0
%                                 g(2) = 4 - 1 = 3 > 0
% g(0.5)*g(2)<0, g est continue et monotone sur [0.5 , 2], donc on peut
% utiliser la s�cante

tic
[inter,approx] = Fsecante(0.5,2,0,10^-8,0); % viens ici peeeeetit petit ...
show('Le nombre d''it�rations utilis� par la m�thode de la s�cante est : ',inter);
show('L''estimation du r�sultat par la m�thode de la s�cante est : ',approx);
show('Le temps pris par la m�thode de la s�cante est : ',toc*1000,' millisecondes');
