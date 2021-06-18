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
![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_4/Unit_4/Evaluation/TEM1.png)

```r
TEM(dt2)
```
![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_4/Unit_4/Evaluation/TEM2.png)

```r
TEM(dt3)
```
![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_4/Unit_4/Evaluation/TEM3.png)

### Fitting K-Means to the dataset
```r
Clusters <- function(dataset, cnt){
  set.seed(29)
  kmeans = kmeans(x = dataset, centers = cnt)
  y_kmeans = kmeans$cluster
}

ykmeans <- Clusters(dt, 5)
ykmeans2 <- Clusters(dt2, 2)
ykmeans3 <- Clusters(dt3, 5)
```

### Visualising the clusters
```r
library(cluster)
clusplot(dt,
         ykmeans,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of Iris Plant'),
         xlab = 'Sepal Lenght',
         ylab = 'Sepal Widht')
```
![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_4/Unit_4/Evaluation/Cluster1.png)

```r
clusplot(dt2,
         ykmeans2,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of Iris Plant'),
         xlab = 'Petal Lenght',
         ylab = 'Petal Widht')
```

![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_4/Unit_4/Evaluation/Cluster2.png)

```r
clusplot(dt3,
         ykmeans3,
         lines = 0,
         shade = TRUE,
         color = TRUE,
         labels = 2,
         plotchar = FALSE,
         span = TRUE,
         main = paste('Clusters of Iris Plant'),
         xlab = 'Sepal Lenght',
         ylab = 'Petal Widht')
```
![alt text]https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_4/Unit_4/Evaluation/Cluster3.png)