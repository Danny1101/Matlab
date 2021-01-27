function show(varargin)%show(msg,nombre)

str = string('');

for i=1:nargin
    temp = varargin{i};
    if ischar(temp)
        str = str + string(temp);
    else
        str = str + string(num2str(temp));
    end
    
end

disp(str);

end