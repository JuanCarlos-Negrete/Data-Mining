#Practice find 20 more functions in R and make an example of it.

mydata <- read.csv(file.choose())


#Function 1: 
names(mydata) 
 
head(mydata) 

levels(mydata$clarity) 

nrow(mydata) 

ncol(mydata) 

sort(mydata$price, decreasing = TRUE) 

length(which(mydata$clarity == 'SI2')) 

prop.table(table(mydata$clarity)) 

#Function 2:
m <- c(1,2,3)
n <- c(4,5,6)
r <- c(7,8,9)

print(m)
print(n)

cbind(m,n,r) 
rbind(m,n,r)

#Function 3: 
x <- 'MANUEL'
z <- c(1,2,2,2,3)

replace(z,1,5)

replace(
  z,
  c(1,2,3,4,5),
  c('A','B','C','D','F')
)

#Function 4: 
b <- c(.55, 1.45)

round(b, digits = 0)

round(b, digits = 1)


#Function 5: 
y <- matrix(sample(1:10, 10), 5,2)
print(y)

colSums(y)

prueba <- 1:10
sample(prueba)
sample(prueba>8)

#Function 6: 
mat <- matrix(1:10,nrow =  5, ncol =  2)

apply(mat,1,sum)
apply(mat,2,sum)
apply(mat,2,min)
apply(mat,2,max)
apply(mat,2,sort)


#Function 7: 
name = "MANUEL"

tolower(name)
toupper(name)

casefold(nombre, upper = FALSE)
casefold(nombre, upper = TRUE)

name <- chartr(old = name, new = "mANUEL", name)

print(nombre)

#Function 8: 
name <- readline(prompt="Enter name: ")
age <- readline(prompt="Enter age: ")

age <- as.integer(age)
print(paste("Hi,", name, "next year you will be", age+1, "years old."))


#Function 9:
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


#Function 10:
for(i in 1:10) {  
  if(i == 5 | i == 10) {
    next
  }
  
  if(i != 5) {
    print(paste("Finished loop iteration No.", i))
  }
}


#Function 11:
# length(x) 
# Get or set the length of vectors (including lists) and factors, and of any other R object for which a method has been defined.
x<-matrix(8:10,nrow=3,ncol=4)
length(x)

#Function 12:
# nchar(x) 
# Takes a character vector as an argument and returns a vector whose elements contain the sizes of the corresponding elements of x. 
nchar("This is a Example")

#Function 13:
# min(x) 
# Minimum of the elements of x
x = c(2,100,3,15000,1,7,8)
min(x) 

#Function 14:
# sort(x)
# Sort (or order) a vector or factor (partially) into ascending or descending order
x = c(3,5,21,87,1,0,85,63,14,8,17,45,47,1002,375,841,254,98)
sort(x)

#Function 15:
# sd(x) 
# This function computes the standard deviation of the values in x
sd(10:4)

#Function 16:
# log(x)
# Log returns the logarithm of the input x
log(2187)

#Function 17:
# mean(a:b) 
# Generic function for the (trimmed) arithmetic mean.
mean(21:87)

#Function 18:
# is.matrix(x) 
# Tests if its argument is a (strict) matrix.
x<-matrix(3:3,nrow=4,ncol=2)
is.matrix(x)

#Function 19:
# range(x) 
# Returns the maximum and minimum
range(5 , 2 ,6 , 4 ,8 ,1 )

#Function 20:
# exp(x)
# Exponential of x
exp(2187)



