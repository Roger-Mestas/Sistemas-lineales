function Y=sustitucionProgresiva(A,b)
n=length(A(1,:));
Y=zeros(n,1);
Y(1)=b(1)/A(1,1);
for i=2:n
    Y(i)=(b(i)-A(i,1:i-1)*Y(1:i-1))/A(i,i);
end
end