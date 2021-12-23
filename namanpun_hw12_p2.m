function [f] = namanpun_hw12_p2(L,x,xList,yList)
%function which evaluates the interpolating polynomial at location x.
%L=function handle to p1 function | x = polynomial at location x |
%xList=list of x locations | yList=list of y locations.
    f=0; %initializing f to 0.    
    for i=1:length(xList) %for loop till the length of xList.     
     L1=L(x,i,xList);  %L1 is taking return from the function handle L.
     f=f+(L1*yList(i)); %multiplying L1 with yList elements and adding to f.
    end
end