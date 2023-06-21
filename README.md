# K-Means Clustering

# Goal
This lab aims to implement of k-means clustering algorithm in the Octave environment.
# Dataset
The dataset consists of customers’ rates of a store regarding loyalty and satisfaction, where rates are scaled.
# Assignment 1 - Random initialization of centroids
Create a function that randomly initializes centroids of a given dataset. This function receives
two input parameters - the dataset and the number of clusters. It returns the centroid points.
# Assignment 2 - Datapoints assignment to the corresponding centroid
Create a function that assigns each data point to the centroid based on the similarity function (the
distance between two points; use Euclidean). Calculate the distance between each data point and
centroids, and assign the specific data point to the closest centroid.
# Assignment 3 - Move centroids
Create a function that recalculates the position of the centroids by finding the means of all data
points belonging to it. This function should have three input parameters - dataset, centroid index,
and a number of clusters - and should return new centroid positions.
# Assignment 4 - Repeat
Load the dataset, initialize the number of clusters (and later experiment with its values), and
initialize the number of iterations (and later experiment with its values). Initialize the centroids
using the above-created function, and repeatedly call functions for data point assignment to the
centroid and centroids reposition. Plot the final results where all points belonging to the same
cluster are the same color.
# Assignment 5 - Elbow Method
Create the function for cost calculation. It should have three parameters - dataset, cluster indices,
and centroid points. It returns the cost.
Initialize the maximum number of clusters and iterations. For each number of clusters (from 1 to
initialized maximum number), go through all of the steps of the K-means clustering algorithm,
and calculate the cost. Plot cost values against the corresponding number of clusters and read
from the graph (if possible) the optimal number of clusters for the specified problem.
Additionally, having in mind the dataset and business goals of the store, think of different
scenarios with other possible numbers of clusters.
