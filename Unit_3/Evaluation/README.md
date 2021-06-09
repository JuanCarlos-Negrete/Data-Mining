# Evaluation Unit #3

Implement the Naive Bayes classification model with the Social_Network_Ads.csv data set and using the e1071 library with the naiveBayes () function. Once the classifier is obtained, do the corresponding data visualization analysis.

### Changing directory
``` r
getwd()
setwd("../Desktop/Materias 8vo/Mineria de datos/Practicas/U3/")
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

### Fitting Nauve Bayes Classification to the Training set
``` r
library(e1071)
classifier = naiveBayes(x = training_set[-3],
                        y = training_set$Purchased)
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

### Naive Bayes is one of the simplest and most powerful algorithms for classification based on the Bayes theorem with an assumption of independence between the predictors, it assumes that the effect of a particular characteristic in a class is independent of other characteristics


### Visualising the Test set results
```r
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3],
     main = 'Naive Bayes (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

![alt text]()


### Visualising the Test set results
```r
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'Naive Bayes (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
![alt text]()