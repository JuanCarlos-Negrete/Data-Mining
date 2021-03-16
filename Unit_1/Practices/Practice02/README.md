# Practice #02

Functions

Practice find 20 more functions in R and make an example of it.

### 1. Function 1
``` r
mydata <- read.csv(file.choose())

names(mydata) 
head(mydata) 
levels(mydata$clarity) 
nrow(mydata) 
ncol(mydata) 
sort(mydata$price, decreasing = TRUE) 
length(which(mydata$clarity == 'SI2')) 
prop.table(table(mydata$clarity)) 
```

### 2. Function 2
``` r
m <- c(1,2,3)
n <- c(4,5,6)
r <- c(7,8,9)

print(m)
print(n)

cbind(m,n,r) 
rbind(m,n,r)
```

### 3. Function 3
``` r
x <- 'MANUEL'
z <- c(1,2,2,2,3)

replace(z,1,5)

replace(
  z,
  c(1,2,3,4,5),
  c('A','B','C','D','F')
)
```

### 4. Function 4
``` r
b <- c(.55, 1.45)

round(b, digits = 0)

round(b, digits = 1)
```

### 5. Function 5
``` r
y <- matrix(sample(1:10, 10), 5,2)
print(y)

colSums(y)

prueba <- 1:10
sample(prueba)
sample(prueba>8)
```

### 6. Function 6
``` r
mat <- matrix(1:10,nrow =  5, ncol =  2)

apply(mat,1,sum)
apply(mat,2,sum)
apply(mat,2,min)
apply(mat,2,max)
apply(mat,2,sort)
```

### 7. Function 7
``` r
name = "MANUEL"

tolower(name)
toupper(name)

casefold(nombre, upper = FALSE)
casefold(nombre, upper = TRUE)

name <- chartr(old = name, new = "mANUEL", name)

print(nombre)
```


### 8. Function 8
``` r
name <- readline(prompt="Enter name: ")
age <- readline(prompt="Enter age: ")

age <- as.integer(age)
print(paste("Hi,", name, "next year you will be", age+1, "years old."))
```


### 9. Function 9
``` r
message("Esto es un mensaje")
warning("This is a warning message")
stop("This is an error message")

for(i in 1:10) {      
  
  if(i != 5) {
    print(paste("Finished loop iteration No.", i))
  }
  
  if(i == 5) {
    stop("i was equal to 5!")
  }
}
```


### 10. Function 10
``` r
for(i in 1:10) {  
  if(i == 5 | i == 10) {
    next
  }
  
  if(i != 5) {
    print(paste("Finished loop iteration No.", i))
  }
}
```

### 6. Function 11
``` r

```

### 7. Function 
``` r

```


### 8. Function 
``` r

```


### 9. Function 
``` r

```


### 10. Function 
``` r

```
