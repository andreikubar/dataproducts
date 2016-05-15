library(shiny)


# Define UI for application that draws a histogram
shinyUI(fluidPage(
  
  # Application title
  titlePanel("MPG (Miles per gallon) estimation"),
  
  # Sidebar with a slider input for the number of bins
  sidebarLayout(
    sidebarPanel(
      numericInput('id1',"Input horse power:",100,min=0,max=500,step=1),
      numericInput('id2',"1/4 mile time:",22,min=14,max=22,step=1),
      radioButtons('id3',"Transmission type:",choices=list("manual"="1","automatic"="0"),selected=1)
    ),
    
    # Show a plot of the generated distribution
    mainPanel(
      #plotOutput("distPlot")
      h4("Estimated MPG:"),
      verbatimTextOutput("text1")
      ,HTML('<footer>
                      @Author:Andei Kuebar, 2016
                    </footer>')
    )
  )
))