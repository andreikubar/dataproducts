library(shiny)

data(mtcars)
fit <- lm( mpg ~ hp + qsec + am , mtcars)

# Define server logic required to draw a histogram
shinyServer(function(input, output) {
  
  # Expression that generates a histogram. The expression is
  # wrapped in a call to renderPlot to indicate that:
  #
  #  1) It is "reactive" and therefore should re-execute automatically
  #     when inputs change
  #  2) Its output type is a plot
  
  output$distPlot <- renderPlot({
    
  })
  
  output$text1 <- renderText({ 
    round(predict ( fit, data.frame(hp=input$id1, qsec=input$id2, am=as.numeric(input$id3)) ))
  })
})