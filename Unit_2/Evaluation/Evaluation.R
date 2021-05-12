
# specification our workplace our workplace
getwd()
setwd("C:/Users/jc_rc/DataMining/Data-Mining/Unit_2/Evaluation")
getwd()

# importing the data with which we are going to work
movies <- read.csv("Project-Data.csv")

str(movies)
summary(movies)

# filtering the data, because not all the data present in the document is used


#filterin Genre
filtGenre <- movies$Genre %in% c("action","adventure","animation","comedy","drama")


# creating the dataframe with the filtered genres
filtermovies <- movies[filtGenre,]

#filtering the studies of our new data frame
filterStudio <- filtermovies$Studio %in% c("Buena Vista Studios","Fox","Paramount Pictures","Sony","Universal","WB")

# creating the new data frame with all the data we need filtered
Resultmovies <- filtermovies[filterStudio,]


#rename columns

colnames(Resultmovies) <- c("Dayofweek", "Director", "Genre", "MovieTitle", "RealseDate", "Studio","AdjustedGroosMill","BudgetMill", "GrossMill","IMDbRating", "MovieLensRating", "OverseasMill",
                            "Overseas", "ProfitMill", "Profit", "RuntimeMin", "UsMill", "GrossUS")
