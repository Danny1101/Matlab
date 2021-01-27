function double=moduloDoubleRecursif(n,mod)

if n < mod
    double = n;
else
    double = moduloDoubleRecursif(n-mod,mod);
end