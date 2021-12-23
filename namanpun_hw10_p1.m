%%%---------RAYLEIGH QUOTIENT ITERATION----------%%%
function [l,v] = namanpun_hw10_p1(A,v0)%function to return eigen values and eigen vectors 

tol=10^-8;%tolerance value
v0=v0./norm(v0);%computing input vector by normalizing.
l0=(v0')*(A)*(v0);%computing lambda value.
difff=10;%initializing diff to 10 for first iteration.
v=v0;%updated vector
l=l0;%updated lambda
k=1;%initializing k=1 for loop

while difff>tol %while loop till value of diff is greater than tolerance
    v_old=v;  %initial values of vector
    v= inv((A-l*eye(size(A))))*v_old;  %computing v 
    v=v./norm(v);  %computing new input vector by normalizing.
    l_old=l;                            
    l=v'*A*v; %computing lambda value.
    difff=abs((l-l_old)/l); %computing new difff value with new lambda
    k=k+1;  %incrementing variable k for next iteration
end
%disp("Eigen Value:")
%l                   
%disp("Eigen Vector:")
%v                       
end