error_1 = []; %initialisng array for the 1st error
error_2 = []; %initialisng array for the 2nd error

value_for_order_1 = []; %initialisng array for the value for 1st order
value_for_order_2 = []; %initialisng array for the value for 1st order

h = logspace(-16,-1,100); %initialising logspace for 10^-16 and 10^-1
x = 1; %assiging 1 to compute the first derivative at first location
f = @(x)(cos(x)); % calculating the derivative for cos x

value_for_order_1 = EAS501_Kritik4a(f,x,h,1); %storing and calculating value for 1st order 
value_for_order_2 = EAS501_Kritik4a(f,x,h,2);%storing and calculating value for 2nd order 


error_1 = abs((-sin(x)) - value_for_order_1); %storing and calculating error  
error_2 = abs((-cos(x)) - value_for_order_2); %storing and calculating error 

loglog(h,error_1,h,error_2); %using loglog to plot graph between error and H
grid on;
xlabel('1st derivative error'); % labelling the x axis
ylabel('2nd derivative error'); % labelling the y axis
legend({'1st Order','2nd Order'}) % stating legend



