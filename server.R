library(shiny)
library(dplyr)
library(ggplot2)
data <-ChickWeight

shinyServer(function(input, output, session) {
  filtered <- reactive({
      data %>%
      filter(Time >= input$Time[1],
             Time <= input$Time[2],
             Diet == input$Diet)
  })
  
  chickaverage <-reactive({
    mean(filtered()$weight) 
  })
  
  output$Plot1 <- renderPlot({
    if (is.null(filtered())) {
      return()
    }
      ggplot(filtered(), aes(weight)) +
      geom_histogram()
  
    })
  

  })
 