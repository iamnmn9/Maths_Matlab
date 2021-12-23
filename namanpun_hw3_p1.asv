function [length] = namanpun_hw3_p1(A, i, j) %Function to find the shortest path between 2 points
%A=adjacency matrix, i = soruce point, j = destination point.     
         n=20; %max length to check the path
         if A(i,j) > 0 %condition to check if the current position element is greater than 0
             %that means both points are connected
             length=A(i,j); %passing the same path as it is connected.
         
         elseif A(i,j)==0  %if the points are not connected.
             
             for k = 1:n+1  % to check error if path length is larger than 20
                 if k > n
                     error("Path length should be less than 20") %if even after 20 iteration paths can't be determined.
                 end
                 
                 if A(i,j)==0 %checking the path for each iteration till 20 iterations.
                     new_A=A.^(k); %incrementing the power by k to get path between points.                 
                      
                     if new_A(i,j) > 0 %if new matrix path is connected
                         length=k; %distance initialized to k.
                         break; %breaking the loop as soon as we get the minimum length of two points.
                     end
                 end
              end
           
         end
end
        