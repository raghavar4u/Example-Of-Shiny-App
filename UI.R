shinyUI(bootstrapPage(

  headerPanel("TestPrice DashBoard"),
  
  sidebarPanel( 
    selectInput("year","Year", choices = c(2012,2013,2014,"Quarterwise")),
  
    radioButtons("plotType", "Plot type",c("Scatter"="p", "plot"="l"))),


  
  mainPanel(
    tabsetPanel(
            tabPanel("Graph",h4("OUTPUT RESULTS"),htmlOutput("tabla2"),plotOutput("plot",height = 600)),
            tabPanel("Table", tableOutput("table")),
            tabPanel("Summary", verbatimTextOutput("summary"))))
  
    
))
