function[result] = EAS501_SP21_Kritik1(f)           % funciton EAS501_SP21_Kritik1(f) which has a function handle f as input.
%TRY BLOCK START
    try                                             %try block                                                 
        % FIRST TEST CASE
        A=randi(12,1,50);                           % random array with 12 elements 1row and 50 column                    
        x=3;                                        %number to be searched
        i=1;                                        %initiliazing i to 1 to be used in loops
        loc1=f(A,x);                                %location of the number using the function handler.
        
        loc_1=0;                                    %loc_1 variable intialized to 0 to countercheck the location of the number 
        while(i<numel(A))                           %while loop which will run till array length
            if(A(i)==x)                             % if the value of the A(i) number while iterating the loop matches the number.
            loc_1=i;                                % position of the number will be i in the array
            break;                                  %if the number is found exit the loop.
            end                                     %end of the if statement
        i=i+1;                                      %iterating i by +1.
        end                                         %end of the while loop
        
        % SECOND TEST CASE
        A=randi(10,50,1);                           % random array with 10 elements 50row and 1 column
        x=9;                                        %number to be searched
        loc2=f(A,x);                                %location of the number using the function handler.
        loc_2=0;                                    %loc_2 variable intialized to 0 to countercheck the location of the number
        i=1;                                        %initiliazing i to 1 to be used in loops
        
        while(i<numel(A))                           % while loop which will run till array length
            if(A(i)==x)                             % if the value of the A(i) number while iterating the loop matches the number.
            loc_2=i;                                % position of the number will be i in the array
            break;                                  %if the number is found exit the loop.
            end                                     %end of the if statement
        i=i+1;                                      %iterating i by +1.
        end                                         %end of the while loop
        
        %THIRD TEST CASE
        A=randi(5,50,1);                            % random array with 10 elements 50row and 1 column
        x=3000;                                      %number to be searched
        loc3=f(A,x);                                %location of the number using the function handler
        
        
        % RESULT FROM ALL 3 TEST CASES:
        if(loc1==loc_1 && loc2==loc_2 && loc3==0)   %if the position of the number matches the position calculated by function handler and 
                                                    % if the position of the non existing number is 0 only then the
                                                    % result is equal to 1. (All results are correct)                                                
         % if the number does not exist then the position should be 0 always.                                          
            result = 1;
        
         
         % if any of the above condition fails:
        else                                        %if the position of the number does not match and non existing number's position is other then 0 
                                                    % then result is 0. (it means function handler is giving incorrect value)
            result = 0;
        end                                         %end of the if statement.
   
        % CATCH BLOCK STARTS:
    catch                                           %if there is any exception in the try block the catch block will result as -1.
        result = -1;
    end                                             %end of the try block
end                                                 % end of the function
