function output = prodMatrice(matrice,vecteur)
output='Erreur';
Size = size(matrice); % [ligne colonne]
if ~(Size(2)==length(vecteur))
    return;
end
clear output;

output = zeros(Size(2),1); % allocation dynamique du vecteur

tic
for ligne=1:Size(1)
    for colonne=1:Size(2)
        output(ligne) = output(ligne) + matrice(ligne,colonne)*vecteur(colonne);
    end
end

disp(['Durée de la méthode utilisante 2 for pour n =',char(string(Size(1))),' : ', char(string(toc)),' secondes']);
clear Size