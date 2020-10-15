function X=SustitucionRegresiva(A,b)
n=length(A);
X(n)=b(n)/A(n,n);
for i=n-1:-1:1
    s=0;
    for j=n:-1:i+1
        s=s+A(i,j)*X(j);
    end
    X(i)=(b(i)-s)/A(i,i);
end
end
