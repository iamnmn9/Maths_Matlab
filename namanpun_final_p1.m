function [mu, V] = namanpun_final_p1(n) %function to calculate mean and covariance matrix
Forcee = normrnd(90,5,[1,n]); %Normal distribution using normrnd for Force.
E_modulus = normrnd(195*10^9,3*10^9,[1,n]); %Normal distribution using normrnd for Elasticity Modulus.
Diameterss = normrnd(12*10^-2,2*10^-4,[1,n]); %Normal distribution using normrnd for Diameter.
func_handle= @eas501_final_beamDeflection; %assigning the function handle to given file.
deflectionn=zeros(1,n); %initializing deflection with zeros.
anglee=zeros(1,n); %initializing angle with zeros.
elements=zeros(2,2); %initializing elements of the covariance matrix with zeros.
i=1; %initializing i to 1 for loop
%%%Loop to pass values in function handle.
for i=1:n %loop till n length.
    [deflectionn(1,i),anglee(1,i)]=func_handle(Forcee(i),E_modulus(i),Diameterss(i)); %passing Force, Elastic, Diameter value to the function handle.
    i=i+1; %Incrementing i by 1 for next iteration.
end    
%%%Loop to calculate elements of covariance matrix.
for i=1:n %loop till n length.
    elements(1,1)=elements(1,1) + (deflectionn(i)^2)/(n-1); %(1,1) element of the covariance matrix
    elements(1,2)=elements(1,2) + (deflectionn(i)*anglee(i))/(n-1); %(1,2) element of the covariance matrix.
    elements(2,1)=elements(2,1) + (anglee(i)*deflectionn(i))/(n-1); %(2,1) element of the covariance matrix.
    elements(2,2)=elements(2,2) + (anglee(i)^2)/(n-1);%(2,2) element of the covariance matrix.
    i=i+1; %incrementing i by 1 for next iteration.
end    
V=[elements(1,1) , elements(1,2) ; elements(2,1) , elements(2,2)]; %final covariance matrix.
mu=[sum(deflectionn)/n ; sum(anglee)/n]; %computing mean of deflection and angles.
end
