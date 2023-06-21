% cost calculation
% Calculation of how far each data point is from the assigned centroid using Euclidean distance
% Calculating the average

function [cost] = calculate_cost(X, idx, centroids)
    K = size(centroids, 1);
    m = size(X, 1);
    cost = 0;
    for i = 1:m
        cost = cost + sum((X(i, :) - centroids(idx(i), :)) .^ 2);
    end
     cost = sum(cost) / m;
end
