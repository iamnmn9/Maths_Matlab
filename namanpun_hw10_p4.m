%%%function to give best approximation to input matrix A:
function B = namanpun_hw10_p4(A,p)

A_rank=rank(A);         %computing rank of input matrix A
if(p>A_rank)            %if requested rank p is larger than the computed rank of A
    B=A;                % returning A as soultion
    return;

else                            %if the requested rank p is not larger                         
    [U,S,V]=svd(A);             %computing U S V by using inbuilt svd function    
    A_rankp=zeros(size(A));     %making a zero matrix to store new values with requested rank p
    
    for i=1:p                   %for loop from 1 to the requested rank p
        U_rankp=U(:,i);         %computing new U on the basis of p rank
        V_rankp=V(:,i);         %computing new V on the basis of p rank
        S_rankp=S(i,i);         %computing new S on the basis of p rank
        
        A_rankp = A_rankp + S_rankp*U_rankp*V_rankp'; %new matrix 
        
    end
    
    [rowss,columnss]=size(A_rankp);  %computing rows and columns of new matrix
    B=A_rankp;                       %resulting matrix is the new matrix 
    
    %%%converting all lesser than 10^-10 value to 0. 
    for i=1:rowss
        for j=1:columnss
            if abs(B(i,j))<=(10^-10) %condition: if less than 10^-10 
            B(i,j)=0;                %making it to "0"                           
            end
        end
    end 
end
end
