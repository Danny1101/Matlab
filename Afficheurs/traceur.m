function traceur(func,varargin) % func,debut,pas,fin

debut = 0;
fin = 10;
pas = 10^-3;
disp(nargin);

if nargin >= 2
    debut = varargin{1};
    
    if nargin >= 3
        pas = varargin{2};
        if nargin >= 4
            fin = varargin{3};
        end
    end
    
end

if debut >= fin 
    return
end

f = zeros(ceil((fin-debut)/pas),1);
iter = 1;
for t = debut:pas:fin
    f(iter) = func(t);
    iter=iter+1;
end
t = debut:pas:fin;
plot(t,f);grid on;

end