# Practice #01

1. Search for a data source with csv format (Free theme)
2. Read the csv and analyze the data with R
3. Generate three graphs with R that tell the story of the data.

### The first one to be a scatter plot of points.



### The second is a facet chart

### Load V-chart
``` r
v <- ggplot(music, aes(x=popularity))
```

### Facets
``` r
v + geom_histogram(binwidth = 10, aes(fill=ï..genre),
                   color="Black") + facet_grid(ï..genre~., scales="free")
```

### Facets Image
![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_2/Unit_2/Practices/Practice01/Facets.png)

### The third is a graph that should say something statistical such as the distribution of the data and that contains the theme layer.

### Histograms and density graphs
``` r
o <- ggplot(music, aes(x=popularity))
```


### Density chart
``` r
h <- o + geom_density(aes(fill=ï..genre), position = "stack")
```


### Histogram
``` r
h <- o + geom_histogram(binwidth = 10, aes(fill=ï..genre), color="Black")
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

### Density Chart Image
![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_2/Unit_2/Practices/Practice01/Density.png)

### Histogram Image
![alt text](https://github.com/JuanCarlos-Negrete/Data-Mining/blob/Unit_2/Unit_2/Practices/Practice01/Histogram.png)