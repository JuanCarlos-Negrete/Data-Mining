# K-Means Clustering

# Set our workspace
getwd()
setwd("../Desktop/Materias 8vo/Mineria de datos/Practicas/U4/")
getwd()

# Importing the dataset
dataset = read.csv('iris.csv')
dt = dataset[1:2]
dt2 = dataset[3:4]
dt3 = dataset[c(1,4)]


# Using the elbow method to find the optimal number of clusters
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

TEM(dt)
TEM(dt2)
TEM(dt3)
