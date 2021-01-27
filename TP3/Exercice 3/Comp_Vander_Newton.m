% Script de comparaison avec la matrice de Vandermonde

% Partie de vérifications

n = length(X);

if n~=length(Y) || n<2 || length(Y)<2
    u = 'Erreur !';
    disp(u);
    return
end

% if c>X(n) || c < X(1)
%     u = 'Extrapolation rencontrée ! Voulez vous continuer ? (true/false) :  ';
%     if ~input(u)
%         return
%     end
% end

X=reshape(X,[1 n]);
Y=reshape(Y,[1 n]);


% On commence l'écriture sur notre script



% On définit le vecteur de temps :
t = 0:.001:6;

tic
vandermonde = vander(X);
%vandermonde = fliplr(vandermonde);

% On a notre matrice de vandermonde, trouvons le vecteur coeff qui réalise
% vandermonde * coeff = Y'
% En utilisant l'opérateur standart (on a vu précedemment qu'il est le plus
% rapide, on pourra toutefois utiliser la méthode x = ResolLu(A,b) qu'on a
% developpé lors du TP1

coeff = vandermonde\(Y');
%coeff = flipud(coeff);
Pvander = polyval(coeff,t);
show('Le temps pris par la méthode de vandermonde est : ',toc*1000,' millisecondes');

disp('-----------------------------------------------------------'); % Séparateur pour la console

% On fait la fameuse méthode de Newton maintenant
tic
% Pré allocation du Polynome de newton
%Pnewton = zeros(1,length(t));
Pnewton=interpolN(X,Y,t);
show('Le temps pris par la méthode de Newton est : ',toc*1000,' millisecondes');

disp('-----------------------------------------------------------'); % Séparateur pour la console
disp(''); % Séparateur pour la console
disp(''); % Séparateur pour la console

if input('Entrer ''0'' pour tracer dans la même page, et ''1'' pour tracer dans deux pages différentes :  ')==0
    plot(t,Pvander,'*red'); % J'ai mis des étoiles pour afficher les deux courbes
    hold on;
    plot(t,Pnewton,'blue');
    grid on;
    title('Comparaison des deux polynômes ; Polynôme de Newton et de Vandermonde');
    xlabel('Vecteur ref');
    ylabel('Image du vecteur ref par le poly de Newton et Vander');
    legend('Polynôme de Vandermonde','Polynôme de Newton');
    hold off;
else
    subplot(2,1,1); plot(t,Pvander,'red') ; title('Polynôme de Vandermonde') ; grid on ; hold off
    subplot(2,1,2); plot(t,Pnewton,'blue') ; title('Polynôme de Newton') ; grid on ; hold off
end


