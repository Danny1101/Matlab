function Iapp=intfct(c,n,a,b,fct)

if c==1
    Iapp =rectangles(n,a,b,fct);
elseif c==2
    Iapp = trapezes(n,a,b,fct);
elseif c==3
    Iapp = simpson(n,a,b,fct);
else
    Iapp = 'Erreur, c n''appartient pas à {1,2,3}';
    disp(Iapp);
end