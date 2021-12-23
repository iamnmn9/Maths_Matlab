for i=1:10
    A=hilb(i+1);     
    
    Q1=qr_classical(A);
    Q11= ((transpose(Q1))*Q1)-eye(i+1);
    Q111(i)=norm(Q11);
    
    
    Q2=qr_householder(A);
    Q22= ((transpose(Q2))*Q2)-eye(i+1);
    Q222(i)=norm(Q22);
    
    
    Q3=qr_modified(A);    
    Q33= ((transpose(Q3))*Q3)-eye(i+1);
    Q333(i)=norm(Q33);
    
    [Q4 R4]=qr(A);
    Q44=((transpose(Q4))*Q4)-eye(i+1);
    Q444(i)=norm(Q44);
    
end

K=2:11;
    
semilogy(Q111,K,Q222,K,Q333,K,Q444,K)
xlabel('Matrix Size');
ylabel('Q^TQ-I');
legend('Classical','Householder','Modified','Matlab')



