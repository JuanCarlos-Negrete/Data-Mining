# Evaluation Unit #2

The directors of the movie review website are very happy with their
previous delivery and now they have a new requirement for you.

The previous consultant had created a graph for them which is illustrated in the following
picture.

<img src="Unit_2/Evaluation/Example.png" alt="Example"/>

However, the R code used to create the graph has been lost and cannot
be recovered.

Your task is to create the code that will recreate the same table making it look like
as close as possible to the original.
You will be provided with a new data set which you can find in this
link:
> * [https://github.com/jcromerohdz/DataMining/blob/master/Datasets/Project-Data.csv](https://github.com/jcromerohdz/DataMining/blob/master/Datasets/Project-Data.csv)
Or if they already have my repository cloned then it is in the folder: 
DataMining/Datasets/Project-Data.csv

## Code

### 1. We specify the path of the files to work
``` r
getwd()
setwd("C:/Users/jc_rc/DataMining/Data-Mining/Unit_2/Evaluation")
getwd()

```

### 2. We import our CSV file to work
``` r
movies <- read.csv("Project-Data.csv")
```

### 3. We filter the data because not all of it is used
### We filter by gender
``` r
filtGenre <- movies$Genre %in% c("action","adventure","animation","comedy","drama")


```

### 4. We create the dataframe with the filtered genres
``` r
filtermovies <- movies[filtGenre,]
```

### 5. We filter the studies of our new data frame
``` r
 filterStudio <- filtermovies$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB")

```

### 6. We create the new data frame with all the data we need filtered
``` r
Resultmovies <- filtermovies[filterStudio,]
```

### 7. We rename the columns
 ``` r
colnames(Resultmovies) <- c("Dayofweek", "Director", "Genre", "MovieTitle", "RealseDate", "Studio","AdjustedGroosMill","BudgetMill", "GrossMill","IMDbRating", "MovieLensRating", "OverseasMill",
                            "Overseas", "ProfitMill", "Profit", "RuntimeMin", "UsMill", "GrossUS")

```