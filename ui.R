library(shiny)
library(ggplot2)
library(dplyr)

data <-ChickWeight


shinyUI(fluidPage(
  titlePanel("ChickWeight vs Different Protein Diets"),
  h4("This application lets you pick the different types of diets and age of the chicks. The corresponding distribution of weight is on the right hand side graph."),
  
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