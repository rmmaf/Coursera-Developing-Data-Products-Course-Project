Choose Your Flower
========================================================
author: Rodrigo Falcão
date: 2023/04/05
autosize: true

Introduction
========================================================

This presentation is done as part of the final course project for 'Developing Data Products' course in the Data Science Specialization track by John Hopkins University on Coursera.

The web application is hosted on the link below:



Application Overview
========================================================

This web application allows you to choose a car that suits your needs.

Enter the  "Sepal Length" "Sepal Width"  "Petal Length" "Petal Width"  and the application will show the right specie for you!

Dataset Overview
========================================================

The application uses 'iris' dataset from the 'datasets' package in R which can predict iris species from given values.


```r
library(datasets)
data(iris)
head(iris, 4)
```

```
  Sepal.Length Sepal.Width Petal.Length Petal.Width Species
1          5.1         3.5          1.4         0.2  setosa
2          4.9         3.0          1.4         0.2  setosa
3          4.7         3.2          1.3         0.2  setosa
4          4.6         3.1          1.5         0.2  setosa
```

Variable Correlation
========================================================



```
Error in cor(iris) : 'x' deve ser numérico
```
