function [result] = kkkkk(f)

%    This function compares the output of a Search function and
%    actual ouput of request sent to Search function and segregates
%    into one of the following three numbers(-1,0,1)



rng(101) %seeds the random testcases below for consistency.
%creates a random integer row-vector with a length of 60 with values chosen
%between 1 to 100
   testcase1 = randi(100,1,60); 
 %creates a random integer column-vector with a length of 80 with values chosen
 %between 1 to 100  
   testcase2 = randi(100,80,1);
 %creates a random integer row-vector with a length of 95 with values chosen
 %between 1 to 100
   testcase3 = randi(100,1,95);
   
   
   
 %org_posn is actual position of the number used with three testcases request respectively.Where n is 1,2,3.
 %search_pos is  generated for the testcase by the Search function.
         %FOR ALL TEST CASES
         try
            %result = 0; %setting intial value of result 
            org_pos1  = 54; %knowing that number 23 is at position 54 in testcase1.
            search_pos1 = f((testcase1),23);  
            org_pos2  = 35; %knowing that number 2 is at position 35  in testcase2.
            search_pos2 = f((testcase2),2);
            org_pos3  = 0; %knowing that number 122 is not present in testcase3.
            search_pos3 = f((testcase3),122);
            
            if org_pos1 == search_pos1 && org_pos2 == search_pos2 && org_pos3 == search_pos3
                result = 1; %Search function works correctly.
            else 
                result = 0; %Search function works incorrectly.
            end 
         catch
              %disp('Error! Search function failed to run.');
              result = -1;  %Search function fails to run. 
         end
end 