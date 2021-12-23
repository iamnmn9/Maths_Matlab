%Objective:
%To create a function that returns the Reduced Row Echelon Form (RREF) of a matrix and the number of non-zero pivots.
%Function that returns the Reduced Row Echelon Form (RREF) of a matrix and the number of non-zero pivots.
function [R,p] = EAS501_Kritik3(A)    
 
 try
    [m,n] = size(A); 
    %storing row and column of matrix A in 'm' and 'n'
    
    
    for i = 1 : min(m,n) %iterate over the min of (rows,coloumns) %%generally its rows.
        
           while  abs(A(i,i)) <= 10^-16  %loop till A(i,i) is less than 10^16
              
               if i ~= m  %if i not equal to rows
                  
                   temp = A(i,:);  % Swapping rows                    
                   A(i,:) = A(m,:);
                   A(m,:) = temp;
                   
               end
           end
           
           
         if abs(A(i,i)) > 10^-16 %if absolute value of A(i,j) is greater than 10^16
            a = A(i,i); %initializing a to current position.
            
            for j = i : n %loop from i to number of columns
                A(i,j) = A(i,j)/a ;
            end
            
            for j = 1 : i-1 %loop from 1 to row-1
                a = A(j,i); %initializing a to A(j,i).
                
                for k = i : n %loop from i to column
                    A(j,k) = A(j,k) - A(i,k)*a; %subtracting previous row x a from current row
                end
            end 
            for j = i + 1 : m %loop from i+1 to number of rows
                a = A(j,i);
                for k = i : n %loopfrom i to number of coloumn
                   A(j,k) = A(j,k) - A(i,k)*a; %subtracting previous row x a from current row
               end
            end    
         end 
    end
    
    %%Output of the function:
    
    disp("Reduced Row Echelon Form (RREF) of matrix A:")
    disp(A) %display of Reduced row echelon form of matrix A.
    total_pivot=0; %initializing pivot count to 0.
    for i = 1:m %loop from 1 to number of rows
        for j = 1:n %loop for each element in the row
         if(A(i,j)==1) % if element in the RREF matrix is 1
             total_pivot=total_pivot+1; %increment pivot value by 1.
         end   
        end
    end
    p=total_pivot;
    disp("No of pivot is equal to:"+total_pivot) %total number of non zero first element in the row i.e PIVOT.
 
 catch 
     disp("ERROR ENCOUNTERED!!! Matrix entered is not correct!! Please Re-Try")
 end
    
end