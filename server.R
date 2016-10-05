library(shiny)
library(datasets)

shinyServer(function(input, output) {
  output$plot <- renderPlot({
    if (input$checkGroup == '1'){
      barplot(WorldPhones[,input$option1], main=input$option1, ylab="Number of Telephones", xlab="Year")
    }
    if(input$checkGroup == '2' && input$checkGroup != 1){
      barplot(t(WorldPhones)[,input$option2], main=input$option2, ylab="Number of Telephones", xlab="Region")
    }
  })
})