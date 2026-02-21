runKmeansApp <- function() {
  appDir <- system.file("shiny", package = "my.package2")
  if (appDir == "") stop("Could not find app directory", call. = FALSE)
  shiny::runApp(appDir, display.mode = "normal")
}
#' Launch the K-means Shiny App
#'
#' This function launches the Shiny app included in the package.
#' The app allows the user to select a dataset, set the number of clusters,
#' and view the clustering results as a plot and table.
#'
#' @export
runKmeansApp <- function() {
  appDir <- system.file("shiny", package = "my.package2")
  if (appDir == "") stop("Could not find app directory", call. = FALSE)
  shiny::runApp(appDir, display.mode = "normal")
}
