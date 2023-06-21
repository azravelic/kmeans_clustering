load('customersnohead.mat'); % Variable X
% no need of variable assignment, it is done automatically when loading .mat files

K = 5; % no. clusters
max_iterations = 20;

% Assignment 1
centroids = initCentroids(X, K);


for i=1:max_iterations
  % Assignment 2
  indices = getPointCentroidIndices(X, centroids); % indices contain m rows with centroid labels assigned
  % Assignment 3
  centroids = computeCentroids(X, indices, K); % New centroids computation
end

colors = ["ro", "go", "bo", "ko"];
centroid_markers = ["rp", "gp", "bp", "kp"];

hold on
for i = 1:K
    scatter(X(indices == i, 1), X(indices == i, 2), char(colors(i)));
    scatter(centroids(i, 1), centroids(i, 2), 60, char(centroid_markers(i)),"filled");
end
hold off

cost = calculate_cost(X, indices, centroids);
disp('Cost : ');
disp(cost);


