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

### 11. Function 11
**nchar(x)**
Takes a character vector as an argument and returns a vector whose elements contain the sizes of the corresponding elements of x. 
``` r
nchar("This is a Example")
```


### 12. Function 12
**min(x)**
Minimum of the elements of x
``` r
x = c(2,100,3,15000,1,7,8)
min(x) 
```


### 13. Function 13
**sort(x)**
Sort (or order) a vector or factor (partially) into ascending or descending order
``` r
x = c(3,5,21,87,1,0,85,63,14,8,17,45,47,1002,375,841,254,98)
sort(x)
```


### 14. Function 14
**sd(x)**
This function computes the standard deviation of the values in x
``` r
sd(10:4)
```


### 15. Function 15 
**log(x)**
Log returns the logarithm of the input x
``` r
log(2187)
```

### 16. Function 16
**mean(a:b)**
Generic function for the (trimmed) arithmetic mean.
``` r
mean(21:87)
```

### 17. Function 17 
**length(x)** 
Get or set the length of vectors (including lists) and factors, and of any other R object for which a method has been defined.
``` r

x<-matrix(8:10,nrow=3,ncol=4)
length(x)
```

### 18. Function 18
**is.matrix(x)** 
Tests if its argument is a (strict) matrix.
``` r
x<-matrix(3:3,nrow=4,ncol=2)
is.matrix(x)
```

### 19. Function 19
**range(x)**
Returns the maximum and minimum
``` r
range(5 , 2 ,6 , 4 ,8 ,1 )
```

### 20. Function 20
**exp(x)**
Exponential of x
``` r
exp(2187)
```