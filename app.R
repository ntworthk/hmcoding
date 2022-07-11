library(shiny)
library(tidyverse)
library(palmerpenguins)
library(DT)

ui <- fluidPage(
  mainPanel(
    tabsetPanel(
      tabPanel("Exercise 1", 
               h3("Data (penguins): "),
               dataTableOutput("displayData"),
               textAreaInput("testcode", "Try colouring the chart in different ways: ", 
                             "ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm)) +
              geom_point(colour = 'red', size = 3)", width="600px"), 
              h3("Chart: "),
              plotOutput("codeResultsPlot")
      ),
      tabPanel("Exercise 2",
               h3("Data (penguins): "),
               dataTableOutput("displayData2"),
               h4("Try colouring the chart in different ways"),
               textAreaInput("testcode2", "ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, colour = species)) +", 
                             "geom_point(size = 3)", width="600px"), 
              h3("Chart: "),
              plotOutput("codeResultsPlot2")
      )
    )
  )
)

server <- function(input, output) {
  shinyEnv <- environment() 
  
  output$displayData <- renderDataTable({ (penguins) })
  codeInput <- reactive({ input$testcode })
  output$codeResultsPlot <- renderPlot({
    eval(parse(text=codeInput()), envir=shinyEnv)
  })

  
  output$displayData2 <- renderDataTable({ (penguins) })
  codeInput2 <- reactive({ input$testcode2 })
  output$codeResultsPlot2 <- renderPlot({
    eval(parse(text=paste0("ggplot(data = penguins, aes(x = bill_length_mm, y = bill_depth_mm, colour = species)) + ", codeInput2())), envir=shinyEnv)
  })
  
  
}

shinyApp(ui, server)
