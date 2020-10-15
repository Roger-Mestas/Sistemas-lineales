function X=GaussSeidel(A,b,X0,Nmax,tol)
e=length(A);
disp(X0')
error=1000;
r=1;
%[n n]=size(A);
%error=tol+1;
while r<=Nmax & error>tol
    X00=X0;
    
    for i=1:e
        a=A(i,:);
        a(i)=[];
        x=X0;
        x(i)=[];
        X(i)=(b(i)-a*x)/A(i,i);
        X0(i)=X(i);
    end
    error=norm(X'-X00,1);
    X0=X';
    disp(X)
    r=r+1;

end
        %s=0;
        %for k=1:n
            %s=s+A(i,k)*X(k);
        %end
        %X0(i)=(b(i)-s+A(i,i)*X(i))/A(i,i);
        %X(i)=X0(i);
    %end
   % error=sqrt(dot(X0-Y,X0-Y));
    %fprintf('%6.2f %6.2f %6.2f %12.8f\n',X0(1),X0(2),X0(3),error)
%end
%R=X0;
end

    
