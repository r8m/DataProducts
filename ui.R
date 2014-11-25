library(shiny)

shinyUI(pageWithSidebar(
    
    # Application title
    headerPanel("Reactive Stock Screener"),
    
    sidebarPanel(
        #Symbol
        textInput("symb", "Stock Symbol:", "AAPL"),
        p("try MSFT, APPL, GOOG"),
        dateInput("dateFrom", "From:","2014-09-01" ),
        dateInput("dateTo", "To:","2014-11-22" ),
        actionButton("goButton","Go!")
        ),
    
    mainPanel(
        h3(textOutput("caption")),
        plotOutput("symbPlot"),
        tableOutput("fin")
        )
    )
)
