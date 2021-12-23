
for i=2:11
    A=hilb(i);
    Q1=qr(A);
    Q1= (Q1.'*Q1)-eye(i);    
    Q1(i)=norm(Q1);
    
   
end