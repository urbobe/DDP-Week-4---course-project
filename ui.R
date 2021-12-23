#
# This is the user-interface definition of a Shiny web application. You can
# run the application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)

# Define UI for application that draws a histogram
shinyUI(fluidPage(

    # Application title
    titlePanel("Car Cylinder vs. MPG Data"),

    # Sidebar with a slider input for MPG
    sidebarLayout(
        sidebarPanel(
            sliderInput("cyl",
                        "Select Cylinders:",
                        min = min(mtcars[,2]),
                        max = max(mtcars[,2]),
                        value = 6,
                        step = 2)
        ),

        # Show a plot of the generated distribution
        mainPanel(
            plotOutput("distPlot")
        )
    )
))
