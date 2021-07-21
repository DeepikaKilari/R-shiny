library(shiny)
library(shinythemes)


#Define UI
ui <- fluidPage(theme = shinytheme("sandstone"),
                navbarPage(
                  "Deepika's World",
                  tabPanel("Home",sidebarPanel(
                    tags$h3("Enter your Details:"),
                    textInput("txt1", "First Name:", ""),
                    textInput("txt2", "Last Name:", ""),
                  ),
                  mainPanel(
                    h1("Hello! Good Day"),
                    
                    h4("Welcome"),
                    verbatimTextOutput("txtout"),
                  )
                
                ),
                tabPanel("About", "This panel is intentionally left blank"),
                tabPanel("Blog", "This panel is intentionally left blank")
                
                )
                
)

server <- function(input,output) {
  output$txtout <- renderText({
    paste( input$txt1, input$txt2, sep = " " )
  })
  
}

shinyApp(ui = ui, server = server)