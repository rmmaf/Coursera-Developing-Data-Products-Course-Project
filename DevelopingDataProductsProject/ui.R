library(markdown)

shinyUI(fluidPage(
  
  titlePanel("Choose a flower that suits your needs"),
  sidebarLayout(
    sidebarPanel(
      helpText("Provide information about your needs and the characteristics of the flower that you want"),
      numericInput("SepalLength", "Sepal.Length: ", 1, min = -2, max = 2.5),
      numericInput("SepalWidth","Sepal.Width: ", 1, min = -2, max = 2.5),
      numericInput('PetalLength', 'Petal.Length: ', 1, min = -1.6, max = 1.8),
      numericInput('PetalWidth', 'Petal.Width: ', 1, min=-1.5, max=1.8),
    ),
    mainPanel(
      h3(textOutput("caption"))
    )
  )
  
)
)