function output = prodMatrice2(matrice,vecteur)

vecteur = reshape(vecteur,[length(vecteur),1]);

output='Erreur';
Size = size(matrice);% [ligne colonne]
if ~(Size(2)==length(vecteur))
    return;
end
clear output;

tic
output = matrice*vecteur;
disp(['Dur�e de la m�thode utilisante l''op�rateur standard pour n=',char(string(Size(1))),' : ', char(string(toc)),' secondes']);
clear Size