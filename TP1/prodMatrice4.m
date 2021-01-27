function output = prodMatrice4(matrice,vecteur)

vecteur = reshape(vecteur,[length(vecteur),1]);

output='Erreur';
Size = size(matrice);% [ligne colonne]
if ~(Size(2)==length(vecteur))
    return;
end
clear output;

output = zeros(Size(2),1); % allocation dynamique du vecteur

tic
i=1;
while i<=Size(1)
    output(i) = matrice(i,:)*vecteur;
    i=i+1;
end
disp(['Durée de la méthode utilisante 1 while pour n =',char(string(Size(1))),' : ', char(string(toc)),' secondes']);
clear Size