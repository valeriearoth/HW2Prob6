library(shiny)

shinyUI(fluidPage(
  titlePanel("Number of telephones by region and year"),
  sidebarLayout(
    sidebarPanel(
      checkboxGroupInput("checkGroup", "Variables to show:", choices = list("Region" = 1, "Year" = 2), selected = 1),
      br(),
      selectInput("option1", "Region:", choices = colnames(WorldPhones)),
      br(),
      selectInput("option2", "Year:", choices = colnames(t(WorldPhones))),
      br()
    ),
        mainPanel(plotOutput("plot"))
  )
))