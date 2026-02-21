library(shiny)
library(my.package2)  # use your package functions

# UI
ui <- fluidPage(
  titlePanel("K-means Clustering App"),
  sidebarLayout(
    sidebarPanel(
      selectInput("dataset", "Choose a dataset:", choices = c("iris", "mtcars")),
      sliderInput("clusters", "Number of clusters:", min = 1, max = 9, value = 3)
    ),
    mainPanel(
      plotOutput("kmeansPlot"),
      tableOutput("clusterTable")
    )
  )
)

# Server
server <- function(input, output) {
  # Reactive dataset
  data <- reactive({
    switch(input$dataset,
           "iris" = iris[, 1:2],
           "mtcars" = mtcars[, c("mpg", "disp")]
    )
  })

  # Calculate clusters using your package function
  clusters <- reactive({
    calculate_clusters(data(), input$clusters)
  })

  # Plot clusters using your package function
  output$kmeansPlot <- renderPlot({
    plot_clusters(data(), clusters())
  })

  # Show cluster counts
  output$clusterTable <- renderTable({
    table(clusters()$cluster)
  })
}

# Launch the app
shinyApp(ui = ui, server = server)
