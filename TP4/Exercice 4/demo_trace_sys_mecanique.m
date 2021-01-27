% demo_trace_sys_mecanique

%
%
% First point

%k = input('Saisir le vecteur [k1 k2 k3] : ');
%c = input('Saisir le vecteur [c1 c2] : ');
%d = input('Saisir le vecteur [d1 d2] : ');

y0 = input('Saisir le vecteur [x1(0) x1_derivee(0) x2(0) x2_derivee(0) ] : ');

str1 = input('Saisir la fonction 1 f1(t) sous forme de ''string'' : ');
str2 = input('Saisir la fonction 2 f2(t) sous forme de ''string'' : ');

fc1 = inline(str1,'t','y');
fc2 = inline(str2,'t','y');

retou = true;

T = input('Saisir la valeur de T : ');
N = input('Saisir la valeur de N : ');
input('Passage au second point, cliquer sur ENTRER !');

while retou
    % Second point
    disp('Passage au second point !');
    %input('Passage au second point, cliquer sur ENTRER !');

    t = linspace(0,T,N);

    kutta4_1 = resout_runge_kutta4(N, T, y0(2), fc1);
    euler_1 = resout_euler(N, T, y0(2), fc1);

    kutta4_2 = resout_runge_kutta4(N, T, y0(4), fc2);
    euler_2 = resout_euler(N, T, y0(4), fc2);

    subplot(2,1,1);
    plot(t,kutta4_1,'red'); hold on ; plot(t,euler_1,'blue');
    plot(t,fc1(t,0),'black'); hold off;
    xlabel('t');
    ylabel('y(t)');
    grid on;
    legend('y1(t) en utilisant Kutta 4','y1(t) en utilisant Euler','y''1(t)');
    title(['Traçage de la fonction y1(t) tel que y''1(t) = ',str1]);

    subplot(2,1,2);
    plot(t,kutta4_2,'red'); hold on ; plot(t,euler_2,'blue');
    plot(t,fc2(t,0),'black'); hold off;
    xlabel('t');
    grid on;
    ylabel('y(t)');
    legend('y2(t) en utilisant Kutta 4','y2(t) en utilisant Euler','y''2(t)');
    title(['Traçage de la fonction y2(t) tel que y''2(t) = ',str2]);


    % Fin du plot
    N = 0;
    N = input('Entrer ''0'' pour clear all & clc, ou bien entrer le nouveau pas : ');

    if N<=0
        retou = false;
    end

end

if N==0
    clear;
    clc
else
    
    N = length(t);
    
end
