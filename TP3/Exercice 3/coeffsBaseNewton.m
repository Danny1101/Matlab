function vector=coeffsBaseNewton(X,Y,i) % on va commencer par Y(i), i>=1

if i==1
    %   Première itération
    vector = Y;
    clear Y;
    vector(2:length(vector)) = coeffsBaseNewton(X,vector,i+1);

elseif length(X) > i
    %   Appel récursif de la méthode
    %   Pré allocation
    vector = zeros(1,length(Y)-1);
    size_vector = length(vector);
    
    for j=1:size_vector
        vector(j) = ( Y(j+1) - Y(j) )/( X(i+j-1) - X(j) );
        
    end
    clear Y;
    vector(2:size_vector) = coeffsBaseNewton(X,vector,i+1);
    
    
else % Dernière itération !!
    vector = ( Y(2) - Y(1) )/( X(i) - X(1) );
    return
    
end
    

end








