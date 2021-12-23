function [x] = namanpun_hw11_p1(fdf,x0,tol)
    n=100; %number of iteration - maximum iteration
    x=x0; %initializing the solution to the given temperory value of x0.  
    
    for i = 1:n+1 %loop til 101
       [func,jacob]=fdf(x); %return from the function handle.
       
       del_ta=inv(jacob)*func; %calculating delta value by jacobian inverse *func value from function handle.
       
       %Damping equations:
       x_new= x - del_ta;
       temp=x_new-x; %temp to check norm for convergence
       x=x_new;       
  
       if norm(temp) < tol %criteria to determine convergence
        break;
       end 
       
       %error check if not converged 
       if i>n %if reached 101 error: did not converge
          error("ERROR, did not converge")
       end  
       
    end       
end