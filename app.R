library(shiny)
library(tidyverse)

ui <- fluidPage(
  mainPanel(
    h3("Data (mtcars): "), verbatimTextOutput("displayData"),
    textAreaInput("testcode", "Try colouring the chart in different ways: ", 
                  "ggplot(data = mtcars, aes(x = mpg, y = cyl)) +
              geom_point(colour = 'red')", width="600px"), 
    # h3("Results: "), verbatimTextOutput("codeResults"),
    h3("Chart: "), plotOutput("codeResultsPlot"))
)

server <- function(input, output) {
  shinyEnv <- environment() 
  output$displayData <- renderPrint({ head(mtcars) })  # prepare head(mtcars) for display on the UI
  
  # create codeInput variable to capture what the user entered; store results to codeResults
  codeInput <- reactive({ input$testcode })
  # output$codeResults <- renderPrint({
  #   eval(parse(text=codeInput()), envir=shinyEnv)
  # })
  output$codeResultsPlot <- renderPlot({
    eval(parse(text=codeInput()), envir=shinyEnv)
  })
}

shinyApp(ui, server)
