Choose Your Flower
========================================================
author: Rodrigo Falcão
date: 2023/04/05
autosize: true

Introduction
========================================================

This presentation is done as part of the final course project for 'Developing Data Products' course in the Data Science Specialization track by John Hopkins University on Coursera.

The web application is hosted on the link below:
https://rmmaf98.shinyapps.io/developingdataproductsproject/


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


```r
library(datasets)
data("iris")
cor(iris[,1:4])
```

```
             Sepal.Length Sepal.Width Petal.Length Petal.Width
Sepal.Length    1.0000000  -0.1175698    0.8717538   0.8179411
Sepal.Width    -0.1175698   1.0000000   -0.4284401  -0.3661259
Petal.Length    0.8717538  -0.4284401    1.0000000   0.9628654
Petal.Width     0.8179411  -0.3661259    0.9628654   1.0000000
```
