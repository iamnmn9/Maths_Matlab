function [L,U,P]=untitled5(A)
 
n=height(A);
L=eye(n);
U=A;
P=L;

for k=1:n
    [pvt i]=max(abs(U(k:n,k)));
    i=k+i-1;
    
    if U(i,k)>1e-8
    if i~=k
         
        if k >= 2
            temp=L(k,1:k-1);
            L(k,1:k-1)=L(i,1:k-1);
            L(i,1:k-1)=temp;
         end
         
        temp=U(k,:);
        U(k,:)=U(i,:);
        U(i,:)=temp;
       
        temp=P(k,:);
        P(k,:)=P(i,:);
        P(i,:)=temp;

       

    end
    end

    for j=k+1:n
        L(j,k)=U(j,k)/U(k,k);
        U(j,:)=U(j,:)-L(j,k)*U(k,:);
    end

end
disp("Matrix L:");
disp(L);
disp("Matrix U:");
disp(U);
disp("Matrix P:");
disp(P);
end