# Evaluation Unit #4

Implement the K-Means grouping model with the Iris.csv dataset that found at https://github.com/jcromerohdz/iris using method kmeans () in R. Once the grouping model is obtained, do the analysis corresponding data display.

### We configure our workplace for the CSV
``` r
getwd()
setwd("../Desktop/Materias 8vo/Mineria de datos/Practicas/U4/")
getwd()
``` 

### We import the dataset and assign variables from the columns
``` r
dataset = read.csv('iris.csv')
dt = dataset[1:2]
dt2 = dataset[3:4]
dt3 = dataset[c(1,4)]
``` 

### Using the elbow method to find the optimal number of clusters
```r
TEM <- function(dataset){
  set.seed(6)
  wcss = vector()
  for (i in 1:10) wcss[i] = sum(kmeans(dataset, i)$withinss)
  plot(1:10,
       wcss,
       type = 'b',
       main = paste('The Elbow Method'),
       xlab = 'Number of clusters',
       ylab = 'WCSS')
}
```
### The results of the elbow method are displayed
```r
TEM(dt)
```
![alt text]()

```r
TEM(dt2)
```
![alt text]()

```r
TEM(dt3)
```
![alt text]()