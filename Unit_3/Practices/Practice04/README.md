# Practice #04

Make the analysis corresponding to the R script of Random Forest which must be documented in its repository, putting in it its visual results and its detailed description of its observations as well as the source code.

### Changing directory
``` r
getwd()
setwd("../Desktop/DataMining/MachineLearning/RandomForest")
getwd()
``` 

### Importing the dataset
``` r
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]
``` 

###  Encoding the target feature as factor
``` r
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))

``` 

### Splitting the dataset into the Training set and Test set
``` r
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
``` 

### Feature Scaling
``` r
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
``` 

### Fitting Random Forest Classification to the Training set
``` r
library(randomForest)
set.seed(123)
classifier = randomForest(x = training_set[-3],
                          y = training_set$Purchased,
                          ntree =10)
``` 

### Predicting the Test set results
``` r
y_pred = predict(classifier, newdata = test_set[-3])
y_pred
``` 

### Making the Confusion Matrix
``` r
cm = table(test_set[, 3], y_pred)
cm
``` 


### We visualize the results of the training sessions, for this we use the elemenStatLearn library that helps us to color our graph
```r
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, grid_set)
plot(set[, -3],
     main = 'Random Forest Classification (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

### In the graph we can see that there are points and the color red and green, on the y axis we have the estimate of wages and on the other we have the age for the data to be correct they must be in the area of ​​the same color, that is, the red ones with the reds and the greens with the greens otherwise they would be erroneous data, we can see that in general most of the data is in its corresponding area although we have a small margin of error

![Alt text]()


### We carry out the coding to make the diagram of the results of the test set
```r
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, grid_set)
plot(set[, -3], main = 'Random Forest Classification (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```


![Alt text]()

### The values obtained from the randomForest function and stored in the classifier variable are graphed, and the error percentage can be observed.
```r
plot(classifier)
```

> RF Graph (Ten Trees)
![Alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_3/Unit_3/Practices/Practice04/Graphic%203.png)

> RF Graph (One Hundred Trees)
![Alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_3/Unit_3/Practices/Practice04/Graphic%204.png)

> RF Graph (Thousand Trees)
![Alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_3/Unit_3/Practices/Practice04/Graphic%205.png)

> RF Graph (Five Thousand Trees)
![Alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_3/Unit_3/Practices/Practice04/Graphic%206.png)