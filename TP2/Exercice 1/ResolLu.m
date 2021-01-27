function x = ResolLu(A,b)

[L,U,det] = factoLU(A);

z = descente(L,b);

x = remontee(U,z);
clear z
end