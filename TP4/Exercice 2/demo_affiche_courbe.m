% Script demo_affiche_courbe
% Mise en pratique de l'exercice 2 du tp

fct = @Cauchy;
T = 7;

pas = .1;

N = ceil(T/pas);
y0 = 1;

disp('Début de l''éxecution'); % Séparateur pour la console
show('L''intervalle est [ 0 , ',T,' ] avec n=',N);
disp(''); % Séparateur pour la console
disp(''); % Séparateur pour la console

% Méthode d'euler
tic
Euler = resout_euler(N, T, y0, fct);
ennd = toc*1000;
show('Le temps utilisé par la méthode d''Euler est : ',ennd,' ms');

% Méthode de runge kutta 2
tic
Kutta2 = resout_runge_kutta2(N, T, y0, fct);
ennd = toc*1000;
show('Le temps utilisé par la méthode de Runge kutta 2 est : ',ennd,' ms');

% Méthode de runge kutta 4
tic
Kutta4 = resout_runge_kutta4(N, T, y0, fct);
ennd = toc*1000;
show('Le temps utilisé par la méthode de Runge kutta 4 est : ',ennd,' ms');

% END

t = linspace(0,T,N);
y = exp(sin(pi*t));

plot(t,y,'black');
grid on; hold on ;

plot(t,Euler,'-ored');
plot(t,Kutta2,'-oblue');
plot(t,Kutta4,'-ogreen');

axis([0 T 0 3.5])

hold off;

title('Plot des courbes');
legend('Courbe de la fonction principale','Courbe d''Euler','Kutta 2','Kutta 4');

clear all;
if input('Entrer ''true'' pour effacer la console : ')
    clc;
end