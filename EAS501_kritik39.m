function [A] = EAS501_kritik3(A)

for i = 1: min(m,n) %iteration between m,n
    if abs(Aij) <= 10^-16%sometimes all rows less than zero
        temp = A(j,:); %swaping by creationg temp varaible
        A(i,:) = A(j,:);%swaping ith to jth row
        A(j,:) = temp;%completed swaping operation
    end
    if abs(ij) > 10^-16 %sometimes all rows less than zero
        a = Aij;%stores real pivot val
        for j = 1:n %normalize row i by pivot
            Aij = Aij/Ai;%performs operation
            
        end
        for j = 1 : i-1 %rows above the pivot
            a = Aji; %stores the real value above pivot
            for k = i:n %column point pivot
                Ajk = Ajk - Aik *Ai;%performs operation
            end
        end
        for j = i+1 : m %rows below the pivot
            a = Aji; % stores orginal value to low pivot
            for k = i:n %column point pivot
                Ajk = Ajk - Aik *Ai;%performs operation
            end
        end
    end
        
        
end
