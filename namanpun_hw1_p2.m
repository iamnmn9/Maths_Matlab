function [f] = namanpun_hw1_p2(n) %funciton with single arguement
if n==0                           % conditional statement if n is qual to zero
    f=1;                          % if number is zero then its factorial is one
elseif n>0                        % if number is positive number
f=1;
    for i = 1:n                   % For loop from 1 to the number itself
        f=f*i;                    % Multiplying and iterating the loop
    end
else                              % if the number is negative
    disp('Please enter a positive number') 
end     