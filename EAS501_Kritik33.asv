function [R, p] = EAS501_Kritik33(A)
% EAS501_Kritik3 is a function that returns the Reduced Row Echelon Form  
% of a matrix and the number of non-zero pivots
%
%   A = input matrix
%   R = RREF of the input matrix
%   p = Number of non-zero pivots in the R

    [row_size, col_size] = size(A);     
    
    i = 1;          % Initialize matrix indexes to 1
    j = 1;
    p = 0;          % Initialize the number of pivots to 0
    
    while i <= row_size && j <= col_size
        if abs(A(i,j)) <= 10^(-16)          % MATLAB doesnt handle decimals very well
            for x = i+1:row_size
                if A(x,j) ~= 0              % Swap the rows to find a pivot if exists
                    temp = A(x,:);
                    A(x,:) = A(i,:);
                    A(i,:) = temp;
                end
            end
        end
        if abs(A(i,j)) >= 10^(-16)
            p = p + 1;                      % Increase pivot count by 1  
            temp = A(i,j);
            for y = j:col_size
                A(i,y) = A(i,y)/temp;       % Make the pivot as 1 by dividing it by itself
            end
            for x = 1:i-1                               
                temp = A(x,j);
                for y = j:col_size
                    A(x,y) = A(x,y) - temp*A(i,y);      % Perform row operation and make other value in column to be 0
                end
            end
            for x = i+1:row_size
                temp = A(x,j);
                for y = j:col_size
                    A(x,y) = A(x,y) - temp*A(i,y);      % Perform row operation and make other value in column to be 0
                end
            end
            i = i+1;
        end
        j = j+1;
    end
    R = A;                                  % Assigned modified matrix to R
end