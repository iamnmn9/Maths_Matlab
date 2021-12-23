function [loc] = EAS501_KRITIK(A,x)
%EAS501_KRITIK2 is array-search function, which returns the first location of x in the integer array A 
%in the output variable loc. If x does not exist in A then the value of loc=0 is returned. 

    % Initializing the value of output (loc) to 0.
    loc = 0;

    % Iterating through the array A to find the index of first occurence of x
    for i = 1:length(A)
        %Checking whether x is equal to the elements of A as we iterate through
        %it. Here, A(i) is the element in A at index i.
        if A(i) == x
            
            %If A(i) is equal to x, then save the value of i (first occurence of x) into the
            %output variable loc.
            loc = i;
            
            %Break the loop as the index of first occurence of x is found successfully.
            break
            
        end
    end

end


