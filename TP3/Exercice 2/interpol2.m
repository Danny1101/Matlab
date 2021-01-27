function interpol2(X,Y)

size = length(X);
pas = 0.001;

% tracage de Y en fonction de X
plot(X,Y,'*red');
hold on;
grid on;

% On cherche les coeffs du polynome de la fct caract�ris�e par f(X)=Y

% M�thode demand�e = for loop + interpol1
% Pr�-allocation
y = linspace(X(1),X(size),ceil(size/pas));
t=y;

iter = 1;
for x = t
    y(iter)=interpol1(X,Y,x);
    iter = iter+1;
end


plot(t,y,'blue');
xlabel('X label');
ylabel('Y label');
legend('Vecteur point Y en fonction de X','Polyn�me d''interpolation');
title('Exercice 2 - Question 2');
hold off;

end