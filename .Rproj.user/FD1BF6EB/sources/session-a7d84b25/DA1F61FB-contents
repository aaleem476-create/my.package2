library(shiny)
library(my.package2)

ui <- fluidPage(
  titlePanel("Homework 5 K-means"),
  numericInput("clusters", "Number of clusters:", 3, min=1),
  actionButton("run", "Run K-means"),
  plotOutput("clusterPlot")
)

server <- function(input, output) {
  data <- matrix(rnorm(50), ncol=2)
  observeEvent(input$run, {
    km <- my_kmeans(data, input$clusters)
    output$clusterPlot <- renderPlot(plot_kmeans(data, km$cluster))
  })
}

shinyApp(ui, server)
