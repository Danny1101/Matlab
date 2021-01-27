function [L,U,det] = factoLU(A)

% skip tests sur A
n=length(A);
for k=1:n-1
    for i=k+1:n
        A(i,k) = A(i,k)/A(k,k);
        for j=k+1:n
            A(i,j) = A(i,j) - A(i,k)*A(k,j);
        end
    end
end

U = triu(A);
L = tril(A,-1)+eye(length(A));

% det(A) = det(L*U) = det(L) * det(U) = produitTermesDiagonaux(L) *
% produitTermesDiagonaux(U) = produitTermesDiagonaux(U)
det = prod(diag(U));
end