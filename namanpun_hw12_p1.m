function [l] = namanpun_hw12_p1(x,i,xList)
%function to return ith lagrange polynomial 
%x=polynomial at location x | i = position | xList=list of x locations.
    pos=i; %pos be the i-th location
    len=length(xList); %length of the list 
    num=1; %initializing numerator to 1
    den=1;  %initializing denominator to 1    
    for j = 1:len %loop till length of xList
        if j~=pos %if j is not equal to pos which is input 'i'
            num=num*(x-xList(j)); %computing numerator
            den=den*(xList(pos)-xList(j)); %computing denominator
        end
    end
    l=num/den; %i-th lagrange polynomial
end