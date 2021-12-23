function [L,scores] = namanpun_final_p2(f) %Function to compute pca scores of the given dataset.
dataset=load(f); %loading the dataset.
data_rate=dataset.ratings; %rating the dataset.
%calculating the mean value:
data_sum= sum(data_rate); 
data_size=250;
data_rate_mean = data_sum/data_size;
%calculating the de-mean value:
data_rate = data_rate - data_rate_mean;
%calculating the covariance:
numerator_cov=(data_rate'* data_rate); %computing numerator
denominator_cov=249; %computing denominator (n-1)
data_rate_covariance = numerator_cov/denominator_cov; %covariance
%calculating the eigen values and eigen vectors.
[eig_vectors,eig_values] = eigs(data_rate_covariance,9);
eig_final=diag(eig_values); % Only taking the diagnol value of the eigen value matrix.
data_rate_new = (eig_vectors' * data_rate')'; %new dataset.
data_rate_new = fliplr(data_rate_new); %flipping the dataset to get PCA in sorted order.
L=eig_final; %Returns the Principal magnitude in sorted column vector in descending order.
scores = data_rate_new; %returning the pca scores.
%plot(scores(:,1));
end