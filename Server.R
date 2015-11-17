library(ggplot2)
library(shiny)
setwd("C:/Users/reddy/Desktop/Test DashBoard")
rre<-read.csv("Testdata.csv",header=T)

shinyServer(function(input, output) 

  { 
    
  output$plot <- renderPlot({
    
        
      if(input$year==2012)
      {
        plot(rre$QTR[rre$Year==2012],rre$Price[rre$Year==2012],main=input$year,ylab="Price",xlab="Quarter",type=input$plotType)
      }
      else
      {
        plot(rre$QTR[rre$Year==2013],rre$Price[rre$Year==2013],main=input$year,ylab="Price",xlab="Quarter")
      }
      
      if(input$year==2014)
      {
        plot(rre$QTR[rre$Year==2014],rre$Price[rre$Year==2014],main=input$year,ylab="Price",xlab="Quarter")
      }
      if(input$year=="Quarterwise")
      {
        qplot(QTR,Price, data=rre, colour=as.factor(Year), binwidth=0.5) + facet_wrap(~ Year)
      }
    
    
  })

  
    
  
    output$table <- renderTable({ data.frame(x=rre)})
  
    output$summary <- renderPrint({summary(rre)})  
})



 
