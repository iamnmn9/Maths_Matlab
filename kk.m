function [result] = kk(f)
%EAS501_SP21_KRITIK1 A unit testing function which checks a function's
%validity which returns the first location of x in the integer array
%   return 1 when function is correct;
%   return 0 when function worked properly but has wrong output;
%   return -1 when there is some error in the function
%   
%   f is the function ; function [loc] = f(A, x)
%   A = row or column array
%   x= variable to look for;
    try
        MAX_LIMIT_OF_RANDOM = 10;   %Numerical value to randomly select the length of the vector
        length_of_vector = 50 + randi(MAX_LIMIT_OF_RANDOM); %50 is added mannualy, to make the size greater than or equal to fifty
        column_vector = randi(100,length_of_vector,1);  %creating column vector with random numbers between 1 to 100
        row_vector = randi(100,1,length_of_vector);     %creating row vector with random numbers between 1 to 100

        random_case = randi(2);     %randomly choosing either row or column vector
        switch random_case          %switching to either row vector or colummn vector
            case random_case==1     %Case 1 = creating column vector
                random_vector = randi(100,length_of_vector,1);
            case random_case==0     %case 2 = creating row vector
                random_vector = randi(100,1,length_of_vector);
        end


        random_index = randi(length_of_vector);                 %Selecting a random known index to pass in function argument
        value_not_available =  -1 * random_index;               %Set index to negative, so the value won't be available in the vector of positive numbers
        case_one_check = random_index == f(row_vector,row_vector(random_index));            %row_vector along with known index
        case_two_check = random_index == f(column_vector,column_vector(random_index));      %column_vector along with known index 
        case_three_check = f(random_vector,value_not_available) == 0;       %If Value Doesnt Exists, return 0

        if case_one_check && case_two_check && case_three_check         %Check All three Cases
            flag = 1;   % If function is correct set flag to 1
        else
            flag = 0;   % If function had erronous output set flag to 0
        end

            result = flag;  %Set result to 0 or 1

    catch M         %Catch any exception
        disp(M)     %isplay error message
        result = -1;    %Set result to -1 when an exception occur

    end
end
