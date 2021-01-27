% Script affiche_courbe
% Mise en pratique de l'exercice 2 du tp

%fct = @Cauchy;
%function = @f
%T = 7;

%pas = .1;

%N = ceil(T/pas);
%y0 = 1;

disp('D�but de l''�xecution'); % S�parateur pour la console
show('L''intervalle est [ 0 , ',T,' ] avec n=',N);
disp(''); % S�parateur pour la console
disp(''); % S�parateur pour la console

% M�thode d'euler
tic
Euler = resout_euler(N, T, y0, fct);
ennd = toc*1000;
show('Le temps utilis� par la m�thode d''Euler est : ',ennd,' ms');

% M�thode de runge kutta 2
tic
Kutta2 = resout_runge_kutta2(N, T, y0, fct);
ennd = toc*1000;
show('Le temps utilis� par la m�thode de Runge kutta 2 est : ',ennd,' ms');

% M�thode de runge kutta 4
tic
Kutta4 = resout_runge_kutta4(N, T, y0, fct);
ennd = toc*1000;
show('Le temps utilis� par la m�thode de Runge kutta 4 est : ',ennd,' ms');

% END

t = linspace(0,T,N);

if input('Entrer ''true'' pour afficher les graphes dans 3 rep�res : ')

    %Euler
    subplot(3,1,1);
    plot(t,Euler,'red');
    title('M�thode d''Euler');
    grid on;
    xlabel('t');
    ylabel('y(t)');
    
    %kutta 2
    subplot(3,1,2);
    plot(t,Kutta2,'blue');
    title('M�thode de Kutta ordre 2');
    grid on;
    xlabel('t');
    ylabel('y(t)');
    
    % Kutta 4
    subplot(3,1,3);
    plot(t,Kutta4,'green');
    title('M�thode de Kutta ordre 4');
    grid on;
    xlabel('t');
    ylabel('y(t)');
    
    hold off;
    title('Plot des courbes');
    legend('Courbe d''Euler','Kutta 2','Kutta 4');
    
else
    plot(t,Euler,'red');
    grid on; hold on ;

    plot(t,Kutta2,'blue');
    plot(t,Kutta4,'green');
    
    hold off;
    title('Plot des courbes');
    legend('Courbe d''Euler','Kutta 2','Kutta 4');
end

%axis([0 T 0 3.5])





clear all;
if input('Entrer ''true'' pour effacer la console : ')
    clc;
end