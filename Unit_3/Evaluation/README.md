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

### Visualising the Test set results
```r

```

![alt text]()


### Visualising the Test set results
```r

```
![alt text]()