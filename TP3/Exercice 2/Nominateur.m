function sortie = Nominateur(X,x)

%
% Pour Nominateur(i)
% sortie = x - X;   i allant de 0 à n
% sortie(i+1) = 1;
% sortie = prod(sortie);
%

X = reshape(X,[1 length(X)]);

if sum(ismember(X,x))
    sortie = 0;
    return;
end

temporaire = x - X;
sortie = prod(temporaire)*ones(1,length(X));
sortie = sortie./temporaire;

% ENFIN !!!!!!!

end