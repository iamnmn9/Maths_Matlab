function [loc] = EAS501_Kritik2(A,x)
%EAS501_KRITIK2 searches for the first location of x in array A
%   x: the value to be searched for
%   A: the array to be searched within
    loc = 0;    %initialize loc to 0
    len = length(A);    %get length of A
    for i = 1:len
        if A(i) == x
            loc = i;    %once x is found, store its index and exit loop
            break
        end
    end     %loc will still be 0 if x is not found
end
