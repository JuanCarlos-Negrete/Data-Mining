# We add the library that we will work with
library(ggplot2)

# We access the path where the files are located
getwd()
setwd("C:/Users/jc_rc/Data Mining Class/DataMining/AdvancedVisualization")
getwd()

# We load our CSV with the variable "music"
music <- read.csv("SpotifyFeatures.csv")

# We apply the statistical functions to observe the data
head(music)
tail(music)
str(music)
summary(music)

#----- Point scatter plot -----#

# We assign to the variable newgraph the columns "duration_ms" and "popularity" of the CSV for X and Y
newgraph <- ggplot(music, aes(x=duration_ms, y=popularity, 
                       color=ï..genre)) 

# The point plot is created
newgraph + geom_point() + xlab("Duration (ms)") + ylab("Popularity")

#----- Graph in facets -----#

#Load V-chart
v <- ggplot(music, aes(x=popularity))

#Facets
v + geom_histogram(binwidth = 10, aes(fill=ï..genre),
                   color="Black") + facet_grid(ï..genre~., scales="free")


#-------------- Histograms and density graphs
o <- ggplot(music, aes(x=popularity))


# Density charts:
h <- o + geom_density(aes(fill=ï..genre), position = "stack")

#Histograms
h <- o + geom_histogram(binwidth = 10, aes(fill=ï..genre), color="Black")


# Theme #
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
