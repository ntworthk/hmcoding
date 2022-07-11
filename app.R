library(shiny)
library(tidyverse)
library(palmerpenguins)
library(DT)

ui <- fluidPage(
  mainPanel(
    tabsetPanel(
        tabPanel("Intro",
                 h3("Meet the penguins"),
                 tags$img(width = 400, src = "https://allisonhorst.github.io/palmerpenguins/reference/figures/lter_penguins.png"),
                 p("The three species of penguins we are looking at today are called Chinstrap, Gentoo and Adelie. They live on the islands of Biscoe, Dream and Torgersen. We have access to information about 344 different penguins, as shown below:"),
                 p("Here are some things we want to know about the penguins:"),
                 tags$ul(
                   tags$li("Which island has the most penguins? Which island has the most Adelie penguins?"), 
                   tags$li("Is there a relationship between bill length and bill depth? For example, do penguins with longer bills also have deeper bills?"), 
                   tags$li("Do female penguins have longer or shorter flippers than male penguins?"),
                   tags$li("Which species of penguin has the longest flippers?"),
                   tags$li("How heavy is the heaviest penguin? Which species is the heaviest?"),
                   tags$li("Anything else you want to find out!")
                 ),
                 dataTableOutput("displayData0")
                 ),
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
  
  output$displayData0 <- renderDataTable({ (penguins) })
  
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
