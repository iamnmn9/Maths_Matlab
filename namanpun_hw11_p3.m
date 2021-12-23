function [x,f] = namanpun_hw11_p3(fun, x0, tol, maxIter)
    
    Al_pha=0.75;
    x=x0; %initial value of x
    
    
    for i = 1:maxIter+1 %loop til maxiter+1
       [a,b,c]=fun(x);  %f,g,H values from function p4 function handle! *where b is g*
       del=-inv(c)*b; %initial value of delta
       
       %Damping equations:
       x_new= x + Al_pha*del;
       x=x_new;  
        
       if norm(b) < tol %criteria to determine convergence
        break;
       end 
       
       %error check if not converged 
       if i==maxIter+1 %if reached maxIter+1 error: did not converge
          error("ERROR")
       end         
       
    end       
    f=a;
end