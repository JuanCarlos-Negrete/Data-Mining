# Practice #05

Make the analysis corresponding to the R script of Desicion Tree, which must be documented in its repository, putting in it its visual results and its detailed description of its observations as well as the source code.

# Support Vector Machine


### In this practice we will explain some observations of the Support Vector Machine coding

### First we must assign our workplace, with the function getwd () we will verify the position of our directory, With the function setwd ("") we assign our workplace
```r 
getwd()
setwd("../Desktop/DataMining/MachineLearning/RandomForest")
getwd()
```


### Once our workplace is established, the next thing is to import the data, we are assigning the information from the csv file called social_Network_Ads.csv to the variable called dataset.
```r
dataset = read.csv('Social_Network_Ads.csv')
```


### In the next line of code we are declaring that we will only work with columns 3 to 5 present in the dataset.
```r
cdataset = dataset[3:5]
```

###  We encode the destination function as a factor
```r
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
```

### We install and import the caTtools library
```r
install.packages('caTools')
library(caTools)
```
### We set our seed of randomness

```r
set.seed(123)
```

### We set our training data and our test data separate our dataset)
```r
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
```

### We normalize our data
```r
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
```

### We install and import the e1071 library
```r
 
install.packages('e1071')
library(e1071)


```
### Adaptation of svm to the training set and prediction of the test set results
```r
classifier = svm(formula = Purchased ~ .,
                 data = training_set,
                 type = 'C-classification',
                 kernel = 'linear')
```
### We make the prediction of the test data set
```r
y_pred = predict(classifier, newdata = test_set[-3])
y_pred
```

### We create the confusion matrix
```r
  cm = table(test_set[, 3], y_pred)

```

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
     main = 'SVM (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```

![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_3/Unit_3/Practices/Practice05/SVM_TrainingSet.png)


### Visualising the Test set results
```r
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set)
plot(set[, -3], main = 'SVM (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_3/Unit_3/Practices/Practice05/SVM_TestSet.png)