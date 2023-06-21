% Function that assigns each data point to the centroid based on the similarity function:  use Euclidean distance
% Calculate the distance between each data point and centroids, and assign the specific data point to the closest centroid.
function indices = get_point_centroid_indices(X, centroids)

  K = size(centroids, 1); % get number of clusters
  indices = zeros(size(X,1), 1); % Dimension of indices is number of rows from the dataset X
  m = size(X,1); % Number of examples or rows in X dataset or number of indices

  distances = zeros(K, 1); % initalize distances cell of dimensions Kx1

  for i = 1:m % loops over all data points
      for j = 1:K % loops over all centroids
            distances(j) = sum((centroids(j, :) - X(i, :)) .^ 2); % Euclidean distance
      end
      [~, indices(i)] = min(distances); % Assigns the index of the centroid with the minimum distance to a data point
      distances = zeros(K, 1); % Restart cell for the new iteration
  end
 end
