% Function that randomly initializes centroids of a given dataset.
% This function receives two input parameters - the dataset and the number of clusters.
% It returns the centroid points.
function centroids = init_centroids(X, K)

    centroids = zeros(K,size(X,2)); % centroids matrix is of the size K X n, where n is no. features in X matrix
    randidx = randperm(size(X,1));  % Generates a random permutation of indices, chooses number from 1 to number of rows in X
    centroids = X(randidx(1:K), :);
    % randidx(1:K) retrieves the first K elements from the randidx permutation.
    % This subset represents a random selection of indices from 1 to K.
    % X(randidx(1:K), :) uses the subset of indices to retrieve the corresponding rows from the matrix X.

end
