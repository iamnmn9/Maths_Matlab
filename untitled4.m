A=randi(12,1,50);                     
        x=9;
        i=1;
        disp(A);    
        loc_1=0;        
        while(i<51)
            if(A(i)==x)
            loc_1=i; 
            break;
            end
        i=i+1;
        end
disp(loc_1)