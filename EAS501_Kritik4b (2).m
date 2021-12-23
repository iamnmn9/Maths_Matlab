%EAS501_Kritik4b is used to creates a log-log plot showing the 
%   error(abs(truth-approximation)) of each approximation 
%   as a function of the grid size for f(x)=cos(x)f(x)=cos(x) evaluated at x=1
%   h: The grid spacing(s) to use and could be a 1D array of grid spacings
%   ranging from 10^-1 to 10^-16 

   h=logspace(log10(10^-16),log10(10^-1));  %Creating the logspace of grid  
   df1=EAS501_Kritik4a (2)(@cos,1,h,1);         %Calling the function with 1 order and x is 1
   df2=EAS501_Kritik4a (2)(@cos,1,h,2);         %Calling the function with 2 order and x is 1
   value_true= - sin(1);                    %Derivative of cos(x)
   true_error_1 = abs(df1 - value_true);    %Finding the error for order 1
   true_error_2 = abs(df2 - value_true);    %Finding the error for order 2
   loglog(h,true_error_1,h,true_error_2);   %Creating loglog plot between h and true errors 
   xlabel("Grid Space")                     %Labelling the x axis
   ylabel("Error Approximation");           %Labelling the y axis
   legend("O(h) Order 1","O(h^2) Order 2"); %Label of respective plots

 
   
       
       
       
   
   
   
   
   