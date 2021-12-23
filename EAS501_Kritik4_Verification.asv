function [order1, order2] = EAS501_Kritik4_Verification(dfFunc)
%EAS501_KRITIK4_VERIFICATION Tests the EAS 501 Kritik-4 function.
%   dfFunc - Function handle to the function to test
%   order1, order2 - An array of length 3 containing the results for three
%   tests:
%       Single x-location, single h
%       Single x-location, multiple h
%       Multiple x-locations, single h
%   order1 refers to the forward difference approximation
%   order2 refers to the center difference approximation

    % Function to test with and it's derivative
    f = @(x)(exp(-x));    
    
    % Finite difference approximations
    df = cell(2,1);
    df{1} = @(f,x,h)((f(x+h)-f(x))./h);         % order-1
    df{2} = @(f,x,h)((f(x+h)-f(x-h))./(2*h));   % order-2
    
    % Array of locations to test at
    x = rand(4,1);
    
    % Array of grid spacings
    h = logspace(-2,-4,4);
    
    % Function handles to temporary output
    o = cell(2,1);
    o{1} = zeros(1,3);
    o{2} = zeros(1,3);
    
    for i=1:2   % Iterate over the orders
        
        % Single x-location, single h
        o{i}(1) = abs(dfFunc(f, x(1), h(1), i) - df{i}(f, x(1), h(1)))<1E-8; 
    
        % Single x-location, multiple h
        der = dfFunc(f, x(1), h, i); 
        if iscolumn(der)   % Convert to row if needed 
            der = der'; 
        end
        o{i}(2) = norm(der - df{i}(f, x(1), h))<1E-8;      
    
        % Multiple x-locations, single h
        der = dfFunc(f, x, h(1), i); 
        if isrow(der)   % Convert to row if needed
            der = der'; 
        end
        o{i}(3) = norm(der - df{i}(f, x, h(1)))<1E-8;      
    end
    
    % Assign the output
    order1 = o{1};
    order2 = o{2};

end
