function u=interpolN(x,y,c)

n = length(c);

% if n~=length(y) || n<2 || length(y)<2
%     u = 'Erreur !';
%     disp(u);
%     return
% end
% 
% if c>x(n) || c < x(1)
%     u = 'Extrapolation rencontrée ! Voulez vous continuer ? (true/false) :  ';
%     if ~input(u)
%         return
%     end
% end
% 
% n = length(x);
% 
% x=reshape(x,[1 n]);
% y=reshape(y,[1 n]);

vecteurCoeff = coeffsBaseNewton(x,y,1);
u = vecteurCoeff(1)*ones(1,n);
temp = ones(1,n); % Allocation

for i = 1:length(x)-1
    temp = temp.*(c-x(i));
    u = u + vecteurCoeff(i+1)*temp;
end


end