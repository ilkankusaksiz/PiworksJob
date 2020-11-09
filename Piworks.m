fileID = fopen('Piworks.txt','r');
formatSpec = '%d %f';
sizeA = [15 15];
A = fscanf(fileID,formatSpec,sizeA);
Tri_array=transpose(A);



N=length(Tri_array);

Tri_Mod=Tri_array;
np_last_row=isprime(Tri_array(N,:));
Tri_Mod(N,np_last_row)=-10000;

for a=N-1:-1:1;
    for b=1:1:a;
        if isprime(Tri_Mod(a,b));
            Tri_Mod(a,b)=-10000;
        else
            Tri_Mod(a,b)=max(Tri_Mod(a,b)+Tri_Mod(a+1,b+1),Tri_Mod(a,b)+Tri_Mod(a+1,b));
        end
    end
end


