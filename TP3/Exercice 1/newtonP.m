function y=newtonP(p,a,r)
% p est le vecteur des coeffs
x=a;
size = 1;
pas = 10^-4; % Le pas sera également l'erreur max de cette méthode

temp = abs(polyval(p,x));

while ( temp < r)
    
    if ( temp <= pas)
        y(size) = x;
        size = size+1;
    end
        
    x = x+pas;
    temp = abs(polyval(p,x));
    
end

end