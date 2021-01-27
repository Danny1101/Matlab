function y=resout_runge_kutta4(N, T, y0, fct)

h = T/N;

% Pré allocation du vecteur
y = zeros(1,N);
y(1) = y0;
ai = 0; % a0

for i=1:(N-1) % on commence par y0 math.théorique
    
    k = coeffsCutta4(ai,y(i),h,fct);
    y(i+1) = y(i) + ( k(1) + 2*k(2) + 2*k(3) + k(4) )/6;
    ai = ai+h;
    
end


end