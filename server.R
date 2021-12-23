#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(ggplot2)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {

    output$distPlot <- renderPlot({

        # generate bins based on input$bins from ui.R
        #x    <- faithful[, 2]
        #bins <- seq(min(x), max(x), length.out = input$bins + 1)
        x <- mtcars[mtcars[,2]==input$cyl,2]
        y <- mtcars[mtcars[,2]==input$cyl,1]
        z <- mtcars[mtcars[,2]==input$cyl,7]

        # draw the histogram with the specified number of bins
        #hist(x, breaks = bins, col = 'darkgray', border = 'white')
        
        plot(x,y,
             xlab = "Cylinders",
             ylab = "MPG",)
             #col = "blue" , pch = 19)    
        
        #text(x,y, labels = rownames(mtcars) , cex = 1)
    })

})
