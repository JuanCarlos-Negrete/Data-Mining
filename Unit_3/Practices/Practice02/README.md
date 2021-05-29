# Practice #02

Make the analysis corresponding to the R script of K-Nearest Neighbors (K-NN) which must be documented in its repository by putting in it its visual results and its detailed description of its observations as well as the source of the code.

### Importing the dataset
``` r
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]
``` 

### Encoding the target feature as factor
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


### Fitting K-NN to the Training set and Predicting the Test set results
``` r
library(class)
y_pred = knn(train = training_set[, -3],
             test = test_set[, -3],
             cl = training_set[, 3],
             k = 5,
             prob = TRUE) 
``` 

### Making the Confusion Matrix
``` r
cm = table(test_set[, 3], y_pred)
``` 











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
