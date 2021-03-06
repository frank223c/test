library(shiny)

shinyServer(function(input, output){
  output$distPlotv <- renderPlot({
    x <- faithful[,2]
    bins <- seq(min(x), max(x), length.out = input$bins + 1)
    hist(x, breaks = bins, col = 'darkgray', border = 'green')
  })
})