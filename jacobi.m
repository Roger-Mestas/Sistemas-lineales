% M?todo de Jacobi para aproximar soluci?n de AX=b
% X0 es un vector columna, aprox inicial
function X=jacobi(A,b,X0,Nmax,Tol)
e=length(A);%N?mero de columnas de A
disp(X0')
error=1000;
r=1;
while r<=Nmax & error>Tol
    for i=1:e
        a=A(i,:);
        a(i)=[];
        x=X0;
        x(i)=[];
        X(i)=(b(i)-a*x)/A(i,i);
    end
    error=norm(X'-X0,1);
    X0=X';
    disp(X);
    r=r+1;
end
end
