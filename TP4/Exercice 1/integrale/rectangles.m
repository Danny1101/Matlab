function integrale=rectangles(n,a,b,fct)

pas = (b-a)/n;

vectorXcomp = (a+pas/2):pas:b;
try
    vectorCenterRect = fct(vectorXcomp);
    clear vectorXcomp;
catch e
        disp('Erreur, la fonction n''accepte pas de vecteurs en entrée !');
        return;
end

%vectorCenterRect = reshape(vectorCenterRect,[length(vectorCenterRect) 1]);
        
integrale = sum(vectorCenterRect*pas);

end
