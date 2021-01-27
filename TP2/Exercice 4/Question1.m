% Question 1
% Méthode de la dichotomie
% tic toc
% Affichage console des résultats obtenus !
erreur_max = 10^-4;
%racine = 0;
debut = 1.5; % f1(1.5) = -0.3059
fin = 2; % f1(2) = 0.6289

% f1 est continue et strictement croissante (monotone) sur [1.5 , 2]
% f1(1.5)*f1(2) < 0

% Dichotomique
tic
[iterations,estimation_resultat] = Dichotomie(@f1,debut,fin,erreur_max,0);
show('Le nombre d''itérations utilisé par la méthode dichotomique est : ',iterations);
show('L''estimation du résultat par la méthode dichotomique est : ',estimation_resultat);
show('Le temps pris par la méthode dichotomique est : ',toc*1000,' millisecondes');


disp('-----------------------------------------------------------'); % Séparateur pour la console

% Sécante
tic
[iterations,estimation_resultat] = Secante(@f1,debut,fin,erreur_max,0);
show('Le nombre d''itérations utilisé par la méthode de la sécante est : ',iterations);
show('L''estimation du résultat par la méthode de la sécante est : ',estimation_resultat);
show('Le temps pris par la méthode de la sécante est : ',toc*1000,' millisecondes');


disp('-----------------------------------------------------------'); % Séparateur pour la console


% Newton
U0 = debut;

fonction = g(@f1);
tic
[iterations,estimation_resultat] = Newton(fonction,U0 , erreur_max,0);
show('Le nombre d''itérations utilisé par la méthode de Newton est : ',iterations);
show('L''estimation du résultat par la méthode de Newton est : ',estimation_resultat);
show('Le temps pris par la méthode de Newton est : ',toc*1000,' millisecondes');
clear fonction;
