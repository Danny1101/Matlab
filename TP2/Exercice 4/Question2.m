% Question 2
% M�thode de la dichotomie
% tic toc
erreur_max = 10^-4;
%racine = 0;
debut = .1; % f2(.1) = -0.4200
fin = 1; % f2(1) = 0.3317

% f2 est continue et strictement croissante (monotone) sur [0 , 1]
% f2(.1)*f2(1) < 0

% Dichotomique
tic
[iterations,estimation_resultat] = Dichotomie(@f2,debut,fin,erreur_max,0);
show('Le nombre d''it�rations utilis� par la m�thode dichotomique est : ',iterations);
show('L''estimation du r�sultat par la m�thode dichotomique est : ',estimation_resultat);
show('Le temps pris par la m�thode dichotomique est : ',toc*1000,' millisecondes');


disp('-----------------------------------------------------------'); % S�parateur pour la console

% S�cante
tic
[iterations,estimation_resultat] = Secante(@f2,debut,fin,erreur_max,0);
show('Le nombre d''it�rations utilis� par la m�thode de la s�cante est : ',iterations);
show('L''estimation du r�sultat par la m�thode de la s�cante est : ',estimation_resultat);
show('Le temps pris par la m�thode de la s�cante est : ',toc*1000,' millisecondes');


disp('-----------------------------------------------------------'); % S�parateur pour la console


% Newton
U0 = debut;
fonction = g(@f2);
tic
[iterations,estimation_resultat] = Newton(fonction,U0, erreur_max,0);
show('Le nombre d''it�rations utilis� par la m�thode de Newton est : ',iterations);
show('L''estimation du r�sultat par la m�thode de Newton est : ',estimation_resultat);
show('Le temps pris par la m�thode de Newton est : ',toc*1000,' millisecondes');

