### Vectors
# list of items with same type

# Vector of strings
fruits <- c("banana", "apple", "orange")
# Print fruits
fruits


# Vector of numerical values
numbers <- c(1, 2, 3)
# Print numbers
numbers


# Vector with numerical values in a sequence
numbers <- 1:10
numbers


fruits <- c("banana", "apple", "orange")
fruits
length(fruits)


fruits <- c("banana", "apple", "orange")
fruits
# Access the first item (banana)
fruits[1]


fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits
# Access the first and third item (banana and orange)
fruits[c(1, 3)]


fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits
# Access all items except for the first item
fruits[c(-1)]


fruits <- c("banana", "apple", "orange", "mango", "lemon")
fruits
# Change "banana" to "pear"
fruits[1] <- "pear"
# Print fruits
fruits


### Lists
# A list in R can contain many different data types inside it. A list is a collection of data which is ordered and changeable.


# List of strings
thislist <- list("apple", "banana", "cherry")
# Print the list
thislist


thislist <- list("apple", "banana", "cherry")
thislist[1]


thislist <- list("apple", "banana", "cherry")
thislist[1] <- "blackcurrant"
# Print the updated list
thislist


thislist <- list("apple", "banana", "cherry")
length(thislist)


thislist <- list("apple", "banana", "cherry")
"apple" %in% thislist


thislist <- list("apple", "banana", "cherry")
append(thislist, "orange")


thislist <- list("apple", "banana", "cherry")
append(thislist, "orange", after = 2)


thislist <- list("apple", "banana", "cherry")
newlist <- thislist[-1]
# Print the new list
newlist


thislist <- list("apple", "banana", "cherry")
for (x in thislist) {
  print(x)
}


list1 <- list("a", "b", "c")
list2 <- list(1,2,3)
list3 <- c(list1,list2)
list3


### Matrices
# A matrix is a two dimensional data set with columns and rows.
# A column is a vertical representation of data, while a row is a horizontal representation of data.




# Create a matrix
thismatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
# Print the matrix
thismatrix


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix
thismatrix[1, 2]


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix
thismatrix[2,]


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix
thismatrix[,2]


thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
thismatrix
thismatrix[c(1,2),]


thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
thismatrix
thismatrix[, c(1,2)]


thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
newmatrix <- cbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
# Print the new matrix
newmatrix


thismatrix <- matrix(c("apple", "banana", "cherry", "orange","grape", "pineapple", "pear", "melon", "fig"), nrow = 3, ncol = 3)
thismatrix
newmatrix <- rbind(thismatrix, c("strawberry", "blueberry", "raspberry"))
# Print the new matrix
newmatrix


thismatrix <- matrix(c("apple", "banana", "cherry", "orange", "mango", "pineapple"), nrow = 3, ncol =2)
thismatrix
#Remove the first row and the first column
thismatrix <- thismatrix[-c(1), -c(1)]
thismatrix


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix
"apple" %in% thismatrix


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix
dim(thismatrix)


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix
length(thismatrix)


thismatrix <- matrix(c("apple", "banana", "cherry", "orange"), nrow = 2, ncol = 2)
thismatrix
for (rows in 1:nrow(thismatrix)) {
  for (columns in 1:ncol(thismatrix)) {
    print(thismatrix[rows, columns])
  }
}


# Combine matrices
Matrix1 <- matrix(c("apple", "banana", "cherry", "grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange", "mango", "pineapple", "watermelon"), nrow = 2, ncol = 2)
Matrix1
Matrix2
# Adding it as a rows
Matrix_Combined <- rbind(Matrix1, Matrix2)
Matrix_Combined
# Adding it as a columns
Matrix_Combined <- cbind(Matrix1, Matrix2)
Matrix_Combined


### Arrays
# Compared to matrices, arrays can have more than two dimensions.


# An array with one dimension with values ranging from 1 to 24
thisarray <- c(1:24)
thisarray
# An array with more than one dimension
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray


thisarray <- c(1:24)
thisarray
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
multiarray[2, 3, 2]


thisarray <- c(1:24)
thisarray
# Access all the items from the first row from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
multiarray[c(1),,1]
# Access all the items from the first column from matrix one
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
multiarray[,c(1),1]


thisarray <- c(1:24)
thisarray
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
2 %in% multiarray


thisarray <- c(1:24)
thisarray
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
dim(multiarray)


thisarray <- c(1:24)
thisarray
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
length(multiarray)


thisarray <- c(1:24)
thisarray
multiarray <- array(thisarray, dim = c(4, 3, 2))
multiarray
for(x in multiarray){
  print(x)
}


### Data frames
# Data Frames are data displayed in a format as a table.
# Data Frames can have different types of data inside it.
# While the first column can be character, the second and third can be numeric or logical.
# However, each column should have the same type of data.




# Create a data frame
Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
# Print the data frame
Data_Frame


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame
summary(Data_Frame)


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame
Data_Frame[1]
Data_Frame[["Training"]]
Data_Frame$Training


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame
# Add a new row
New_row_DF <- rbind(Data_Frame, c("Strength", 110, 110))
# Print the new row
New_row_DF


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame
# Add a new column
New_col_DF <- cbind(Data_Frame, Steps = c(1000, 6000, 2000))
# Print the new column
New_col_DF


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame
# Remove the first row and column
Data_Frame_New <- Data_Frame[-c(1), -c(1)]
# Print the new data frame
Data_Frame_New


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame
dim(Data_Frame)


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame
ncol(Data_Frame)
nrow(Data_Frame)


Data_Frame <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame
length(Data_Frame)


Data_Frame1 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame1
Data_Frame2 <- data.frame (
  Training = c("Stamina", "Stamina", "Strength"),
  Pulse = c(140, 150, 160),
  Duration = c(30, 30, 20)
)
Data_Frame2
New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame


Data_Frame3 <- data.frame (
  Training = c("Strength", "Stamina", "Other"),
  Pulse = c(100, 150, 120),
  Duration = c(60, 30, 45)
)
Data_Frame3
Data_Frame4 <- data.frame (
  Steps = c(3000, 6000, 2000),
  Calories = c(300, 400, 300)
)
Data_Frame4
New_Data_Frame1 <- cbind(Data_Frame3, Data_Frame4)
New_Data_Frame1
###################################################
### Combine two matrices with different dimensions
m1 <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
m2 <- matrix(c(1,2,3,4), nrow = 2, ncol = 2)
merge(m1, m2, all=TRUE)   ## not the desired output
##################################################
### PCA
mtcars

mtcars.pca <- prcomp(mtcars[,c(1:7,10,11)], center = TRUE,scale. = TRUE)

summary(mtcars.pca)

str(mtcars.pca)

library(devtools)
install_github("vqv/ggbiplot")

library(ggbiplot)

ggbiplot(mtcars.pca)

ggbiplot(mtcars.pca, labels=rownames(mtcars))

mtcars.country <- c(rep("Japan", 3), rep("US",4), rep("Europe", 7),rep("US",3), "Europe", rep("Japan", 3), rep("US",4), rep("Europe", 3), "US", rep("Europe", 3))

ggbiplot(mtcars.pca,ellipse=TRUE,  labels=rownames(mtcars), groups=mtcars.country)

ggbiplot(mtcars.pca,ellipse=TRUE,choices=c(3,4),   labels=rownames(mtcars), groups=mtcars.country)

