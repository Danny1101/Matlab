% Script d'application de l'exercice 1
% scriptApplication.m

a = 1;
b = 2;
n = 10;
fct = @test;

disp('Début de l''éxecution'); % Séparateur pour la console
show('L''intervalle est [ ',a,' , ',b,' ] avec n=',n);
disp(''); % Séparateur pour la console
disp(''); % Séparateur pour la console

% Rectangles
tic
integ = intfct(1,n,a,b,fct);
ennd = toc*1000;
show('En utilisant la méthode des rectangles, on obtiens une approximation égale à ',integ);
show('L''erreur de cette méthode est sensiblement égale à ',log(b)-log(a)-integ);
show('Le temps utilisé par la méthode des rectangles est : ',ennd,' ms');

disp('-------------------------------------------------------');
disp(''); % Séparateur pour la console

% Trapèzes
tic
integ = intfct(2,n,a,b,fct);
ennd = toc*1000;
show('En utilisant la méthode des trapèzes, on obtiens une approximation égale à ',integ);
show('L''erreur de cette méthode est sensiblement égale à ',log(b)-log(a)-integ);
show('Le temps utilisé par la méthode des trapèzes est : ',ennd,' ms');

disp('-------------------------------------------------------');
disp(''); % Séparateur pour la console

%Simpson
tic
integ = intfct(3,n,a,b,fct);
ennd = toc*1000;
show('En utilisant la méthode de Sympson, on obtiens une approximation égale à ',integ);
show('L''erreur de cette méthode est sensiblement égale à ',log(b)-log(a)-integ);
show('Le temps utilisé par la méthode de Sympson est : ',ennd,' ms');

disp('-------------------------------------------------------');
disp(''); % Séparateur pour la console
clear integ;