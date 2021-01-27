function y = resout_euler(N, T, y0, fct)

h = T/N;

% Pr� allocation du vecteur
y = zeros(1,N);
y(1) = y0;
ai = 0; % a0

for i=1:(N-1) % on commence par y0 th�orique
    
    y(i+1) = y(i) + h*fct( ai , y(i) );
    ai = ai+h;
    
end

end