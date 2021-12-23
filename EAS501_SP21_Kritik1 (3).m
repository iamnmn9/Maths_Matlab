function [result] = EAS501_SP21_Kritik1(g)
%Here we will generate random vectors and in the first 2 cases I am
%modifying a value by giving the location as input in x and y so that I
%know the location and it's value.

     %now Generate a random row vector r1 and modify a value in the array r1
     r1=randi([100],1,70);
     x=input("Enter the location to for which you wanted to change the value for the row vector (1,70)");
     s1=input("Enter the new value to change in that location");
     r1(x)=s1;
     %now Generate a random column vector r2 and modify a value in the array r2 
     r2=randi([100],70,1);
     y=input("Enter the location to for which you wanted to change the value for the row vector(70,1)");
     s2=input("Enter a value to change in that location");
     r2(y)=s2;
     
     %now Generate the third vector and modify a value in the array r3
     r3=randi([100],70,1);
    try
         a=g(r1,s1); %pass in the search function with inputs vector(r1),Value to be located(s1) and assign the location output to a
         b=g(r2,s2); %pass in the search function with inputs vector(r2),Value to be located(s2) and assign the location output to b
         s3=input("Enter the value which is out of the range that is above 100"); 
         c=g(r3,s3);%pass in the search function with inputs vector(r1),Value to be located(s1) and assign '0' to C if the value lies out of the range
         if a==x && b==y && c==0 %check if the Search function works properly
             result=1;
         else 
             result=0; 
         end    
     catch
         result=-1;
     
     end    
     
         
end
