%Assignment 5

load('customersnohead.mat');% Variable  X

% Initialization
max_iterations = 20;
num_clusters = 10;
costs = zeros(num_clusters, 1);

for c = 1:num_clusters
    centroids = initCentroids(X, c);
    for i=1:max_iterations
      indices = getPointCentroidIndices(X, centroids);
      centroids = computeCentroids(X, indices, c);
    end
    costs(c) =  calculate_cost(X, indices, centroids);

end

% Plot
plot(1:num_clusters, costs, 'r-o');
xlabel("Number of Clusters");
ylabel("Cost for iterations");

