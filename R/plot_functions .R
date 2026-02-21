#' Plot k-means clusters (2D)
#'
#' @param x Numeric matrix with 2 columns
#' @param clusters Vector of cluster assignments
#' @return ggplot2 plot of clusters
#' @examples
#' set.seed(123)
#' data <- matrix(rnorm(20), ncol = 2)
#' km <- my_kmeans(data, 3)
#' plot_kmeans(data, km$cluster)
#' @export
plot_kmeans <- function(x, clusters) {
  if (!requireNamespace("ggplot2", quietly = TRUE)) stop("ggplot2 required for plotting")
  x <- as.data.frame(x)
  if (ncol(x) != 2) stop("x must have exactly 2 columns")
  x$cluster <- as.factor(clusters)

  ggplot2::ggplot(x, ggplot2::aes(x = V1, y = V2, color = cluster)) +
    ggplot2::geom_point(size = 3) +
    ggplot2::labs(title = "K-means Clusters") +
    ggplot2::theme_minimal()
}
