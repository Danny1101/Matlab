function output = prodMatrice1(matrice,vecteur)
output='Erreur';
Size = size(matrice);% [ligne colonne]
if ~(Size(2)==length(vecteur))
    return;
end
clear output;

output = zeros(Size(2),1); % allocation dynamique du vecteur

tic
ligne = 1;
while ligne<=Size(1)
    colonne = 1;
    while colonne<=Size(2)
        output(ligne) = output(ligne) + matrice(ligne,colonne)*vecteur(colonne);
        colonne=colonne+1;
    end
    ligne = ligne+1;
end
        
disp(['Durée de la méthode utilisante 2 whiles pour n =',char(string(Size(1))),' : ', char(string(toc)),' secondes']);
clear Size