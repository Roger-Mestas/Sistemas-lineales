function [P,L,U]=descompPLU(A)
n=length(A);
P=eye(n);
L=zeros(n);
U=A;
for j=1:n-1
    [maximo,k]=max(abs(U(j:n,j)));
    %Haciendo el intercambio de filas en U
    fila=U(j,:);
    U(j,:)=U(j-1+k,:);
    U(j-1+k,:)=fila;
    if k>1 % k>1 si y solo si hay intercambio de filas
    %Haciendo el intercambio de filas en P
    fila=P(j,:);
    P(j,:)=P(j-1+k,:);
    P(j-1+k,:)=fila; 
    %Haciendo el intercambio de filas en L
    fila=L(j,:);
    L(j,:)=L(j-1+k,:);
    L(j-1+k,:)=fila;
    end
        
        for i=j+1:n
            L(i,j)=U(i,j)/U(j,j);
            U(i,:)=U(i,:)-L(i,j)*U(j,:);
        end
    end
L=L+eye(n);
end
    
   