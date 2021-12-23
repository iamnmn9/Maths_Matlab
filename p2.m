function [L,scores] = namanpun_final_p2(f)

 

    f = load(f);

    data = f.ratings;

 

    % STEP 1, finding a mean and subtracting

    mean_data = sum(data) / size(data,1);

    data = data - mean_data;

 

    % STEP 2, covariance matrix

    cov_data = (data'* data)/(size(data,1)-1);

 

    % STEP 3, Finding Eigenvectors and Eigenvalues

    [V,D] = eig(cov_data);

 

    % We convert our eigenvalues into a column-vector in descending order

    [eigen,~] = sort(diag(D),'descend');

 

    % STEP 4, Computing the PCA scores

    newdata = V' * data';

    newdata = newdata';

    newdata = fliplr(newdata);

 

    % STEP 5, returns the output to the variables

    % return the eigenvalues and PCA scores

    L=eigen;

    scores = newdata;

 

 

end