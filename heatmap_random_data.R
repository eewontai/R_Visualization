#Heatmap on random data

set.seed(123)                                           # Set seed for generating randomness
data <- matrix(rnorm(10000, 0, 100), nrow = 100, ncol = 100)           # Create example data
colnames(data) <- paste0("col", 1:100)                             # Column names
rownames(data) <- paste0("row", 1:100) 

head(data)
heatmap(data)


#########################################################################
###Syntax
#rnorm(n, mean, sd)

###Parameters
#n: It is the number of observations(sample size).
#mean: It is the mean value of the sample data. Its default value is zero.
#sd: It is the standard deviation. Its default value is 1.