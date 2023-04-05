#
# This is the server logic of a Shiny web application. You can run the
# application by clicking 'Run App' above.
#
# Find out more about building applications with Shiny here:
#
#    http://shiny.rstudio.com/
#

library(shiny)
library(datasets)
library(class)
library(ggplot2)
library(GGally)
library(caret)

shinyServer(function(input, output) {
  
  iris[,1:4] <- scale(iris[,1:4])
  setosa<- rbind(iris[iris$Species=="setosa",])
  versicolor<- rbind(iris[iris$Species=="versicolor",])
  virginica<- rbind(iris[iris$Species=="virginica",])
  
  
  ind <- sample(1:nrow(setosa), nrow(setosa)*0.8)
  iris.train<- rbind(setosa[ind,], versicolor[ind,], virginica[ind,])
  iris[,1:4] <- scale(iris[,1:4])
  
  fit <- reactive({
    knn(train = iris.train[,1:4], 
        test = data.frame(input$SepalLength, 
                          input$SepalWidth, 
                          input$PetalLength, 
                          input$PetalWidth),
        cl = iris.train$Species, k=5)
  })
  
  output$caption <- renderText({
    paste("Your flower is", as.character(fit()))
  })
  
})
