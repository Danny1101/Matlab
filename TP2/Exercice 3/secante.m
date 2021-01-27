% script de la sécante

% on a g(x) = (x^2 + 1) / (2*x)     Préalablement définie

% On définis nos constantes :
erreur_max = 10^-4;
a = 0.5; b = 2 ;

s1 = 0;
Un = s1;

k = 0;

% On prouve que g est monotone et g(0.5) = 0.25 - 1 = -0.75 < 0
%                                 g(2) = 4 - 1 = 3 > 0
% g(0.5)*g(2)<0, g est continue et monotone sur [0.5 , 2], donc on peut
% utiliser la sécante

tic
[inter,approx] = Fsecante(0.5,2,0,10^-8,0); % viens ici peeeeetit petit ...
show('Le nombre d''itérations utilisé par la méthode de la sécante est : ',inter);
show('L''estimation du résultat par la méthode de la sécante est : ',approx);
show('Le temps pris par la méthode de la sécante est : ',toc*1000,' millisecondes');
