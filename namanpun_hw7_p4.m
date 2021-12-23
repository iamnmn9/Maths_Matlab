function [dec] = namanpun_hw7_p4(bin) % CONVERTING A 32-BIT IEEE754 BINARY STRING INTO A BASE-10 FLOATING POINT NUMBER


b=0;   % initializing 'b' variable to 0
mantissa=0;   % initializing 'mantissa' variable to 0

% 32-BIT Binary string ONLY!!!
    if(length(bin)>32) %if string is greater than 32 bit
        disp("You have entered more than 32 bits! Please enter 32 bits only");
    
    elseif(length(bin)<32) %if string is lesser than 32 bit
        disp("You have entered less than 32 bits! Please enter 32 bits only ");
    
    end
    
    a=(-1)^(str2double(bin(1))); % calculating the sign | formula: (-1)^(1st element)
    
    % Calculating exponent block
    for i= 1:8 
        b=b+str2double(bin(i+1))*(2^(8-i));
    end         
    
    exponent=b-127; %exponent value (correct bias)
    
    %Calculating mantissa or fraction
    for i = 1:23
        mantissa=mantissa+str2double(bin(i+9))*(2^(-i));
    end   
    
%calculating the decimal 
dec=(a)*(1+mantissa)*(2^(exponent));  % (sign)(1+mantissa)(2^exponent)
end

 
