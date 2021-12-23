%%script to plot computation time and matrix size
%NOTE: Script will take 350seconds to complete!!!!
n=floor((logspace(1,3))); %logspace from 10 to 1000 values, floor to round off 
%tic
for i=1:50 %loop from 1 to 50 values
    A=rand(n(i),n(i))+n(i)*eye(n(i)); %random funtion to initialize matrix A
    tic  %start of timer
    namanpun_hw8_p1(A); %calling function p1
    time(i)=toc; %end of timer
end
%time=toc;
%disp(time);
%disp("seconds");
loglog(n(1:50),time(1:50)) %loglog plot

xlabel('Matrix Size'); %xlabel
ylabel('Computing Time'); %ylabel

hold on    %hold to merge multiple plots in single plot

loglog(n(1:50),(n(1:50).^3)/1000000) %O(n^3) plot - analytic long term,scaling 10^5

legend('Computing Time','O(n^3)') %legend to identify plots
