%FUNCTION TO compute LU Decomposition of A with partial pivoting.
function [L,U,P]=namanpun_hw8_p1(A)
 
n=height(A); %height of A will give rows
L=eye(n); %L initializing with Identity matrix of n x n
U=A; % intializing U with matrix A
P=eye(n); %P initializing with Identity matrix of n x n

for k=1:n %for loop from 1 to n
    [pvt i]=max(abs(U(k:n,k))); %taking max value U, maximum value index is i
    i=k+i-1; %initiating i with maximum value index +current loop iteration -1
    
    if U(i,k)>1e-8 %validating the condition of zero pivot
    if i~=k %if i is not equals to k
         
        if k>=2 %if value of k exceed 2
            %%%Swap function for L matrix
            tmp=L(k,1:k-1); 
            L(k,1:k-1)=L(i,1:k-1);
            L(i,1:k-1)=tmp;
         end
        
        %%Swap function for U
        tmp=U(k,:);
        U(k,:)=U(i,:);
        U(i,:)=tmp;
        
        %%Swap function for P
        tmp=P(k,:);
        P(k,:)=P(i,:);
        P(i,:)=tmp;
      
    end
    end

    for j=k+1:n %for loop till n
        L(j,k)=U(j,k)/U(k,k); %computing L by dividing U on different position
        U(j,:)=U(j,:)-L(j,k)*U(k,:); %computing U
    end

end
disp("Matrix L:"); 
disp(L); %displaying L
disp("Matrix U:");
disp(U); %displaying U
disp("Matrix P:");
disp(P); %displaying P
end