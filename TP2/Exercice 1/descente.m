function vector = descente(matrix,vect)

vector = 'Erreur !';
vect = reshape(vect,[length(vect),1]);
if ~checkDim(matrix,vect)
    return;
end
clear vector
vector = zeros(length(vect),1);

ligne = 1;

[maxL,maxC] = size(matrix);

% d�but de l'it�ration
% Utilisation de la loop while pour sa rapidit� compar�e � for,
% constatation faite au tp0 !

while ligne<=maxL
    colonne = 1;
    vector(ligne) = vect(ligne);
    % vector definit x
    % vect definit b
    while colonne < ligne
        vector(ligne) = vector(ligne) - matrix(ligne,colonne)*vector(colonne);
        colonne = colonne + 1;
    end
    
    ligne = ligne + 1;
end
end