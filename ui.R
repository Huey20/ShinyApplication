library(shiny)
library(ggplot2)
library(dplyr)

data <-ChickWeight


shinyUI(fluidPage(
  titlePanel("Chickweight vs Diet"),
  
  # Sidebar with a slider input and radiobuttons
  sidebarLayout(
    sidebarPanel(
       sliderInput("Time",
                   "Age of Chicks (Days):", 1, 21, c(1,10)), 
              
       radioButtons("Diet", "Diet Type",
                    choices = c("1", "2", "3", "4"),
                    selected = "1")
       ),
    
    # Show a plot of the generated distribution
    mainPanel(
       plotOutput("Plot1")

  )
))
)