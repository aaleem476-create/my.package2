plot_clusters <- function(data, clusters) {
  plot(data,
       col = clusters$cluster,
       pch = 19,
       xlab = colnames(data)[1],
       ylab = colnames(data)[2])
  points(clusters$centers, col = 1:nrow(clusters$centers), pch = 8, cex = 2)
}
#' Plot K-means clusters
#'
#' Plots a 2D scatter plot of the data with points colored by cluster.
#' Cluster centers are highlighted with a larger symbol.
#'
#' @param data Numeric dataframe used for clustering
#' @param clusters K-means result object from calculate_clusters()
#' @export
plot_clusters <- function(data, clusters) {
  plot(data,
       col = clusters$cluster,
       pch = 19,
       xlab = colnames(data)[1],
       ylab = colnames(data)[2])
  points(clusters$centers, col = 1:nrow(clusters$centers), pch = 8, cex = 2)
}
