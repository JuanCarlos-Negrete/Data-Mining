
# We specify the path of the files to work
getwd()
setwd("C:/Users/jc_rc/DataMining/Data-Mining/Unit_2/Evaluation")
getwd()

# We import our CSV file to work
movies <- read.csv("Project-Data.csv")

str(movies)
summary(movies)

# We filter the data because not all of it is used

# We filter by gender
filtGenre <- movies$Genre %in% c("action","adventure","animation","comedy","drama")


# We create the dataframe with the filtered genres
filtermovies <- movies[filtGenre,]

# We filter the studies of our new data frame
filterStudio <- filtermovies$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB")

# We create the new data frame with all the data we need filtered
Resultmovies <- filtermovies[filterStudio,]


# We rename the columns

colnames(Resultmovies) <- c("Dayofweek", "Director", "Genre", "MovieTitle", "RealseDate", "Studio","AdjustedGroosMill","BudgetMill", "GrossMill","IMDbRating", "MovieLensRating", "OverseasMill",
                            "Overseas", "ProfitMill", "Profit", "RuntimeMin", "UsMill", "GrossUS")
