calculate_clusters <- function(data, k = 3) {
  kmeans(data, centers = k)
}
#' Calculate K-means clusters
#'
#' This function runs K-means clustering on a numeric dataset.
#'
#' @param data A numeric data frame or matrix
#' @param k The number of clusters (default = 3)
#' @return A K-means object containing cluster assignments and centers
#' @export
calculate_clusters <- function(data, k = 3) {
  kmeans(data, centers = k)
}
