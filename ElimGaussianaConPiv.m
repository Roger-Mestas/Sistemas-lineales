function X=ElimGaussianaConPiv(A,b)
[n n]=size(A);
Ab=[A,b];
%disp(Ab);
for j=1:n-1
    [maxi ind]=max(abs(Ab(j:n,j)));
    ind=ind+j-1;
    v=Ab(j,:);
    Ab(j,:)=Ab(ind,:);
    Ab(ind,:)=v;
    %disp(Ab);
    for i=j+1:n
        m=-Ab(i,j)/Ab(j,j);
        Ab(i,:)=Ab(i,:)+m*Ab(j,:);
    end
    %disp(Ab);
end
%X=SustRegre(Ab(:,1:n),Ab(:,n+1));
X=SustitucionRegresiva(Ab(:,1:n),Ab(:,n+1));
end
