% Function that recalculates the position of the centroids by finding the means of all data points belonging to it.
% This function has three input parameters: dataset, centroid index, and a number of clusters and returns new centroid positions.
function centroids = computeCentroids(X, idx, K)
  [m, n] = size(X);
  centroids = zeros(K, n); % centroids of dimensions K x no. features

  for i = 1:K % loop through all centroids
      temp_x = X(idx == i, :); % idx == i returns a vector of all datapoints that belong to cluster i
      centroids(i, :) = mean(temp_x); % each centroid is assigned the mean value of all data points that belong to it
  end
end
