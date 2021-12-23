function [w] = namanpun_midterm_p1(x,y,funs)
%FUNCTION to determine what weights 
%should be given a dataset and function basis!

%%%Handling column matrix input!

    if(iscolumn(x)) %if input is a column matrix 
     x=x.'; %converting into row matrix.
    end

    if(iscolumn(y)) %if input is a column matrix
        y=y.'; %converting into row matrix.
    end

%%%Calculating matrix A:

    for i = 1 : length(x) %for- loop till length of x (1D array)
        for j = 1 : length(funs) %for- loop till length of funs (functions in 1D array)
            A(i, j)= funs{j}(x(i)); %Computing matrix A with funs function with value of variable 'x'.
        end
    end   
    
%Least Square Approximation:provides the best approximation solution to Ax=b
%%% x^hat=(A^transpose * A)^-1 * A^transpose*b%%%

w=((A.' * A)\(A.' * y.')).'; % calculating weights
disp(w); %displaying all weights!
end