function Un = fibunacci(u0,u1,n)

Un = u1;
Un_1=u0;

for i=2:n % pas de 1
    temp = Un + Un_1;
    Un_1=Un;
    Un = temp;
end


    