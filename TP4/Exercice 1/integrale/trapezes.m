function integrale=trapezes(n,a,b,fct)

integrale = (fct(a)+fct(b))/2; % initialisation de la partie facile ^^

pas = (b-a)/n;

ai = linspace(a+pas,b-pas,n-1);

try
    vectorImg = fct(ai);
    clear ai;
catch e
        disp('Erreur, la fonction n''accepte pas de vecteurs en entrée !');
        return
end

integrale = integrale + sum(vectorImg);
integrale = integrale*pas;

end