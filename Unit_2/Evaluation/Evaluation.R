
# We specify the path of the files to work
getwd()
setwd("../Desktop/Materias 8vo/Mineria de datos/Practicas/U2/")
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

colnames(Resultmovies) <- c("Dayofweek", "Director", "Genre", "MovieTitle", "RealseDate", "Studio","AdjustedGroosMill","Budget", "GrossMill","IMDbRating", "MovieLensRating", "OverseasMill",
                            "Overseas", "ProfitMill", "Profit", "RuntimeMin", "UsMill", "GrossUS")

# Load libraries to use
library(extrafont)
library(ggplot2)

# Import downloaded fonts
font_import("fonts/", prompt = F)

#We build the structure of the graph
u <- ggplot(Resultmovies, aes(x=Genre, y=GrossUS))
t <- u + geom_jitter(aes(color=Studio, size = Budget)) + geom_boxplot(alpha=0.5)

# We add the theme layer
t + 
  xlab("Genre") +
  ylab("Gross % US") +
  ggtitle("Domestic Gross % by Genre") +
  theme(axis.title.x = element_text(color = "Purple", size=30,  face = "bold"),
        axis.title.y = element_text(color = "Purple", size=30,  face = "bold"),
        axis.text.x = element_text(size = 20),
        axis.text.y = element_text(size = 20),
        legend.title = element_text(size = 25),
        legend.text = element_text(size = 15),
        legend.justification = c(1,.5),
        text = element_text( family = "Comic Sans MS"),
        plot.title = element_text(color = "Black",
                                  size = 35,
                                  hjust = 0.5,
                                  face = "bold"))
