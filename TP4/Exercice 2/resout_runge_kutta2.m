function y=resout_runge_kutta2(N, T, y0, fct)

h = T/N;

% Pré allocation du vecteur
y = zeros(1,N);
y(1) = y0;
ai = 0; % a0

for i=1:(N-1) % on commence par y0 math.théorique
    
    k1 = fct(ai,y(i));
    k2 = fct(ai+h,y(i)+h*k1);
    
    y(i+1) = y(i) + ( k1 + k2 )*h/2;
    ai = ai+h;
    
end


end