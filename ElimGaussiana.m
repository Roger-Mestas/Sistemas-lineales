function X=ElimGaussiana(A,b)
[n n]=size(A);
Ab=[A,b];
for j=1:n-1
    for i=j+1:n
        m=-Ab(i,j)/Ab(j,j);
        Ab(i,:)=Ab(i,:)+m*Ab(j,:);
    end
end
X=SustitucionRegresiva(Ab(:,1:n),Ab(:,n+1));
end
