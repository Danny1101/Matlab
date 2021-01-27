function vector = remontee(matrix,vect)

vector = 'Erreur !';
vect = reshape(vect,[length(vect),1]);
if ~checkDim(matrix,vect)
    return;
end
clear vector
vector = zeros(length(vect),1);

[maxL,maxC] = size(matrix); %#ok<ASGLU>
ligne = maxL;

% d�but de l'it�ration
% Utilisation de la loop while pour sa rapidit� compar�e � for,
% constatation faite au tp0 !

% On va commencer par la derniere ligne et on remonte !
while ligne>0
    colonne = maxL;
    % vector definit x
    % vect definit b
    vector(ligne) = vect(ligne);
    
    while colonne > ligne % on �vite la diagonale, d�j� incluse dans la L-20 du code
        
        vector(ligne) = vector(ligne) - matrix(ligne,colonne)*vector(colonne);
        colonne = colonne - 1;
    end
    vector(ligne) = vector(ligne)/matrix(ligne,ligne);
    ligne = ligne - 1;
end
end