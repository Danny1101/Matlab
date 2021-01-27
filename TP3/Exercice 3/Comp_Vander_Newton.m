% Script de comparaison avec la matrice de Vandermonde

% Partie de v�rifications

n = length(X);

if n~=length(Y) || n<2 || length(Y)<2
    u = 'Erreur !';
    disp(u);
    return
end

% if c>X(n) || c < X(1)
%     u = 'Extrapolation rencontr�e ! Voulez vous continuer ? (true/false) :  ';
%     if ~input(u)
%         return
%     end
% end

X=reshape(X,[1 n]);
Y=reshape(Y,[1 n]);


% On commence l'�criture sur notre script



% On d�finit le vecteur de temps :
t = 0:.001:6;

tic
vandermonde = vander(X);
%vandermonde = fliplr(vandermonde);

% On a notre matrice de vandermonde, trouvons le vecteur coeff qui r�alise
% vandermonde * coeff = Y'
% En utilisant l'op�rateur standart (on a vu pr�cedemment qu'il est le plus
% rapide, on pourra toutefois utiliser la m�thode x = ResolLu(A,b) qu'on a
% developp� lors du TP1

coeff = vandermonde\(Y');
%coeff = flipud(coeff);
Pvander = polyval(coeff,t);
show('Le temps pris par la m�thode de vandermonde est : ',toc*1000,' millisecondes');

disp('-----------------------------------------------------------'); % S�parateur pour la console

% On fait la fameuse m�thode de Newton maintenant
tic
% Pr� allocation du Polynome de newton
%Pnewton = zeros(1,length(t));
Pnewton=interpolN(X,Y,t);
show('Le temps pris par la m�thode de Newton est : ',toc*1000,' millisecondes');

disp('-----------------------------------------------------------'); % S�parateur pour la console
disp(''); % S�parateur pour la console
disp(''); % S�parateur pour la console

if input('Entrer ''0'' pour tracer dans la m�me page, et ''1'' pour tracer dans deux pages diff�rentes :  ')==0
    plot(t,Pvander,'*red'); % J'ai mis des �toiles pour afficher les deux courbes
    hold on;
    plot(t,Pnewton,'blue');
    grid on;
    title('Comparaison des deux polyn�mes ; Polyn�me de Newton et de Vandermonde');
    xlabel('Vecteur ref');
    ylabel('Image du vecteur ref par le poly de Newton et Vander');
    legend('Polyn�me de Vandermonde','Polyn�me de Newton');
    hold off;
else
    subplot(2,1,1); plot(t,Pvander,'red') ; title('Polyn�me de Vandermonde') ; grid on ; hold off
    subplot(2,1,2); plot(t,Pnewton,'blue') ; title('Polyn�me de Newton') ; grid on ; hold off
end


