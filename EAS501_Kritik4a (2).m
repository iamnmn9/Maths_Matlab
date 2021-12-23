function [df] = EAS501_Kritik4a (2)(f, x, h, order) 
%EAS501_Kritik4a is used to find out the first derivative 
%  Approximation error 
%  f: A function handle to a function of one-variable 
%  x: Locations where to compute the first derivative 
%  h: The grid spacing(s) to use and could be a 1D array of grid spacings
%  df: The approximated derivative of f at x
%  order: The order of the method to use 

 
 if (length(h)>1 && length(x)>1)     %Checking that h and x both cannot be array
     error("Length of grid space and location where to compute derivative both cannot be an array");
     
 else                                
    if order == 1 || order ==2       %Checking that order is only 1 or 2
        count=1;                     %Initialize the count in prder to iterate 
        for i=x                      %Iterating for when value is equal to x
            for j = h                %Iterating for when value is equal to h
                
                    if order==1                       %Checking when order 1
                        df(count)=(f(i+j)-f(i))/(j);  %Finding finite-difference approximations
                        count=count+1;                %Incrementing the count to increment the index of df 
                        
                    elseif order==2                       %Checking when order 2
                        df(count)=(f(j+i)-f(i-j))/(2*j);  %Finding finite-difference approximations
                        count=count+1;                    %Incrementing the count to increment the index of df 

                    end   
            end
        end
          
    else
        error("The order can only be 1 or 2");   %When order is not equal to 1 or 2 
    end
     

 end    
end