# Practice #01

Make the analysis corresponding to the logistic regression R script, which must be documented in your repository, putting in this your visual results and your detailed description of your observations as well as the source of code.

### Directory change
``` r
getwd()
setwd("../Desktop/DataMining/MachineLearning/LogisticRegression")
getwd()
``` 

### Importing the dataset
``` r
dataset <- read.csv('Social_Network_Ads.csv')
dataset <- dataset[, 3:5]
``` 

### Splitting the dataset into the Training set and Test set
``` r
library(caTools)
set.seed(123)
split <- sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set <- subset(dataset, split == TRUE)
test_set <- subset(dataset, split == FALSE)
``` 

### Feature scaling
``` r
training_set[, 1:2] <- scale(training_set[, 1:2])
test_set[, 1:2] <- scale(test_set[, 1:2])
``` 

### Fitting Logistic Regression to Training set
``` r
classifier = glm(formula = Purchased ~ .,
                 family = binomial,
                 data = training_set)
``` 

### Predicting the Test set results
``` r
prob_pred = predict(classifier, type = 'response', newdata = test_set[-3])
prob_pred
y_pred = ifelse(prob_pred > 0.5, 1, 0)
y_pred
``` 
### Making the Confusion Metrix
``` r
cm = table(test_set[, 3], y_pred)
cm
```

### Graphic representation of results

``` r
ggplot(training_set, aes(x=EstimatedSalary, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)
```

![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_3/Unit_3/Practices/Practice01/Graphic1.png)



``` r
ggplot(training_set, aes(x=Age, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)
```


![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_3/Unit_3/Practices/Practice01/Graphic2.png)



``` r
ggplot(test_set, aes(x=EstimatedSalary, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)
```

![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_3/Unit_3/Practices/Practice01/Graphic3.png)



``` r
ggplot(test_set, aes(x=Age, y=Purchased)) + geom_point() + 
  stat_smooth(method="glm", method.args=list(family="binomial"), se=FALSE)
```

![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_3/Unit_3/Practices/Practice01/Graphic4.png)






### Theme
``` r
h +
  xlab("Popularity") +
  ylab("Number of Songs") +
  ggtitle("Music Popularity Distribution") +
  theme(axis.title.x = element_text(color = "DarkBlue", size=25),
        axis.title.y = element_text(color = "DarkRed", size=25),
        axis.text.x = element_text(size = 15),
        axis.text.y = element_text(size = 15),
        legend.title = element_text(size = 20),
        legend.text = element_text(size = 15),
        legend.position = c(1,1),
        legend.justification = c(1,1),
        plot.title = element_text(color = "Black",
                                  size = 30,
                                  family = "Courier"))
```

### Density Chart Image
![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_2/Unit_2/Practices/Practice01/Density.png)
