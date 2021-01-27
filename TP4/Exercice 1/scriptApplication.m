% Script d'application de l'exercice 1
% scriptApplication.m

a = 1;
b = 2;
n = 10;
fct = @test;

disp('D�but de l''�xecution'); % S�parateur pour la console
show('L''intervalle est [ ',a,' , ',b,' ] avec n=',n);
disp(''); % S�parateur pour la console
disp(''); % S�parateur pour la console

% Rectangles
tic
integ = intfct(1,n,a,b,fct);
ennd = toc*1000;
show('En utilisant la m�thode des rectangles, on obtiens une approximation �gale � ',integ);
show('L''erreur de cette m�thode est sensiblement �gale � ',log(b)-log(a)-integ);
show('Le temps utilis� par la m�thode des rectangles est : ',ennd,' ms');

disp('-------------------------------------------------------');
disp(''); % S�parateur pour la console

% Trap�zes
tic
integ = intfct(2,n,a,b,fct);
ennd = toc*1000;
show('En utilisant la m�thode des trap�zes, on obtiens une approximation �gale � ',integ);
show('L''erreur de cette m�thode est sensiblement �gale � ',log(b)-log(a)-integ);
show('Le temps utilis� par la m�thode des trap�zes est : ',ennd,' ms');

disp('-------------------------------------------------------');
disp(''); % S�parateur pour la console

%Simpson
tic
integ = intfct(3,n,a,b,fct);
ennd = toc*1000;
show('En utilisant la m�thode de Sympson, on obtiens une approximation �gale � ',integ);
show('L''erreur de cette m�thode est sensiblement �gale � ',log(b)-log(a)-integ);
show('Le temps utilis� par la m�thode de Sympson est : ',ennd,' ms');

disp('-------------------------------------------------------');
disp(''); % S�parateur pour la console
clear integ;