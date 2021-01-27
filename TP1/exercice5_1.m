function output=sum_prod(a,b)

output = 0; % initialisation de la variable de sortie output

for i=1:b % i allant de 1 avec un pas de 1 à b
    output = output + a^i;
end
