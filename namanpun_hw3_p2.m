function [num] = namanpun_hw3_p2(A, i, j, n) %Function to find total number of path of particular length.
%A=adjacency matrix, i = soruce point, j = destination point, n= maximum length given   
         length = 0; %initializing with 0       
         for k = 1:n %n is the given length and starting for loop 1 till the length maximum i.e n.
             
             %if A(i,j) <=n %Calculating all the point less than given length
             new_A=A.^k; %to try paths in the next power of the matrix
             length=length+new_A(i,j); %%adding all the possible paths.
             %end
         end
        num=length;
end