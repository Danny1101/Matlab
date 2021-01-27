function C=Inverse(A)

Size = size(A);
C='Erreur';

if Size(1)~=Size(2) || det(A)==0
    return;
end
clear C
% l'idée est en principe de diviser la matrice inverse de A en plusieurs
% vecteurs colonnes, et résoudre l'équation A*x_n=b_n avec b_n pourra etre 
% b1 = [1;0;0 ... 0] ; b2 = [0;1;0;...] les vects de la base canonique
% x_n sera le vecteur colonne de l'inverse de A.
% On explique, soit B = inv(A), B(:,1) sera x_1 par exemple ^^
% Hop hop on commence !

iterator = 1;
C = zeros(Size(1));
% Ah on n'a pas oublié que la boucle la plus rapide est while, après la récursivité, voyons voir
% si on a une idée avec !

In = eye(Size(1));

while iterator <= Size(1)
    
    % Using standart operator :)
    %C(:,iterator) = A\In(:,iterator); % Le vecteur de la base canonique
    
    % Using LU Method :(
    C(:,iterator) = ResolLu(A,In(:,iterator)); % Le vecteur de la base canonique
    
    % Et on incrémente, comme d'hab quoi :p
    iterator = iterator + 1;
end %while
end % function