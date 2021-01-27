function sortie = Denominateur(X)

X = reshape(X,[1 length(X)]);

temporaire = X - X';
temporaire = temporaire + eye(length(X));

sortie = prod(temporaire,1);

% ENFIN !!!!!!!

end