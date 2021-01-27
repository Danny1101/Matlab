function bool = checkDim(matrix,vector)

Size = size(matrix);

bool = Size(2)==length(vector) && Size(2)==Size(1);
clear Size
end