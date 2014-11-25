library(shiny)
library(quantmod)

shinyServer(function(input, output) {
    output$symbPlot <- renderPlot({
        input$goButton
        plotData<-getSymbols(input$symb, 
                             from=input$dateFrom, 
                             to=input$dateTo , 
                             auto.assign=FALSE)
        chartSeries(plotData,
                    name=input$symb,
                    theme=chartTheme("white"))
        #isolate(input$symb)
    })
    output$fin <- renderTable({
        input$goButton
        finData<-getFin(input$symb, auto.assign=FALSE)
        viewFin(finData)
    })
})