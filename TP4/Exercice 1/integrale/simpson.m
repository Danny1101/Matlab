function integrale=simpson(n,a,b,fct)

pas = (b-a)/n;
% initialisation de la partie sans boucle
integrale = fct(a)+fct(b);

vector = linspace(a,b,n+1);
%size = length(vector);
% first = [a1 a2 ... a(n+1)=b] size = n+1

try
    vector1 = fct( vector(2:n) ); % All except first and last point so [a2 ... an]
    clear vectorXcomp;
catch e
        disp('Erreur, la fonction n''accepte pas de vecteurs en entrée !');
        return;
end

% ai = vector(1 : n)
% ai+1 = vector(2 : n+1) ~
vector2 = fct( ( vector(1 : n) + vector(2 : n+1) )/2 );

integrale = integrale + 2*sum(vector1) + 4*sum(vector2);
integrale = integrale * pas/6;



end