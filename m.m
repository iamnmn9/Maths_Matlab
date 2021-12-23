function [result] = m(f)
% EAS501_SP21_Kritik1 - Unit test function to validate for Funtions - SearchA , SearchB , SearchC . SearchD
% Unit test works on the principle of AAA - Arrange , Act and Assert
   
    try 
        
        % Testing function with A random integer row-vector with a minimum length of 50 where you know the correct output of f
        % ARRANGE  - Case 1
        
        random_row_vector = randi(10,1,50); % Generating a random vector array of length 50 with values less than 10
        x = 3; % Putting a number to search for first location
        case1_fun_output = f(random_row_vector , x); % Checking the actual function
        test_loc = get_loc_array(random_row_vector , x); % Getting the vectors output with my logic
        
        % ASSERT - Case 1
        if(case1_fun_output == test_loc)
            result_1 = 1; % If the actual function and the logic in unit test matches then result_1 is 1
        else
            result_1 = 0; % If the actual function and the logic in unit test fails then result_1 is 0
        end
        

        % Testing function with A random integer column-vector with a minimum length of 50 where you know the correct output of f
        % ARRANGE - Case 2 
        
        random_col_vector = randi([1,10],50,1); % Generating a random column vector array of length 50 with values less than 10
        x = 3; % Putting a number to search for first location
        case2_fun_output = f(random_col_vector , x); % Checking the actual function
        test_loc = get_loc_array(random_col_vector , x); % Getting the vectors output with my logic
        
        % ASSERT - Case 2
        if(case2_fun_output == test_loc)
            result_2 = 1; % If the actual function and the logic in unit test matches then result_2 is 1
        else
            result_2 = 0; % If the actual function and the logic in unit test fails then result_2 is 0
        end
        

        % Testing function with A random integer row-vector with a minimum length of 50 where you know the requested value does not exist.
        % ARRANGE - Case 3
        % state = rng; % Saving the current state of the random number generator and create a 1-by-50 vector of random integers.
       
        random_vector = randi(10,1,50); % Generating a random vector array of length 50 with values less than 10
        x = 20; % Putting a number to search for first location which is not in the array
        case3_fun_output = f(random_vector , x); % Checking the actual function
        test_loc = get_loc_array(random_vector , x); % Getting the vectors output with my logic
        
        % ASSERT - Case 3
        if(case3_fun_output == test_loc)
            result_3 = 1;
        else
            result_3 = 0;
        end
        
        % Now validating all the case results and returning actual result based on the AND operation of all.
        if (result_1 == 1 && result_2 == 1 && result_3 ==1) % If all cases are passed , it means function works as expected
            result = 1;
        else
            result = 0; % If any of the case fails then setting result as 0 , that means function does not works as expected
        end
    
    catch error_msg
        disp(error_msg.message) % Displaying the error message encountered during the exception.
        result = -1; % The function fails to run.
    end
    
end

% Unit test - ACT section
function [test_loc] = get_loc_array(Arr , x)
    % Funtion to get the first location of the searched term in our array
    test_loc = 0; % Setting 0 as by default as number is not found
    for i=1:length(Arr)
        if(x == Arr(i))
            test_loc = i;
            break;
        end
    end
end


