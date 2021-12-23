%%Function to evaluate interpolant which result from namanpun_midterm_p1
%%weights and function bases!!!
function [y] = namanpun_midterm_p2(x,w,funs)

%%%Calculating matrix A:
    for i = 1 : length(x) %for- loop till length of x (1D array)
        for j = 1 : length(funs)%for- loop till length of funs (functions in 1D array)
            A(i, j)= funs{j}(x(i));%Computing matrix A with funs function with value of variable 'x'.
        end
    end
    
%%%Calculating Interpolation
    y = (w * A.').'; %value of y with respect to weights and A matrix (function(x) matrix)!
   
end    
%
%end