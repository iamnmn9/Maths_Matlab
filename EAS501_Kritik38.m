function [R,p] = EAS501_Kritik3(A)
%   Detailed explanation goes here
%program takes the matrix and returns the rref of matrix and number of
%pivots
x=0;

   for i=1:min(size(A,1),size(A,2))%for loop to loop over min of rows and columns
       if abs(A(i,i)) < 10^-16%condition to check if pivot element is less than 10 power -16
           A(i)=A(i+1);
           A(i+1)=A(i);
       end
       if abs(A(i,i)) >= 10^-16 %condition if pivot element is greater thanpower 10-16
           a=A(i,i);%store the value in a
           for j=1:size(A,2)
               A(i,j)=A(i,j)/a;%divide the element with the stored element
              x=x+1;
              break;
           end
           for j=1:i-1%loop over columns 
               a=A(j,i);%store the value in a
               for k=1:size(A,2)
                   A(j,k)=A(j,k)-A(i,k)*a;%multiply with variable a to that element
               end
           end
           for j=i+1 : size(A,1)%repeat the loop with rows
               a=A(j,i);
               for k=1:size(A,2)
                   A(j,k)=A(j,k)-A(i,k)*a;%multiply with variable a to that element
               end
           end
       end
   end
   R=A;
  
   
   p=x;
end
