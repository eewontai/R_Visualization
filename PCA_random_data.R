install.packages("devtools")
install.packages("ggbiplot")

set.seed(123)                                                     # Set seed for reproducibility
data <- matrix(rnorm(100, 0, 10), nrow = 10, ncol = 10)           # Create example data
colnames(data) <- paste0("col", 1:10)                             # Column names
rownames(data) <- paste0("row", 1:10) 

head(data)

data.pca <- prcomp(data, center = TRUE,scale. = TRUE)

summary(data.pca)

str(data.pca)

library(devtools)
install_github("vqv/ggbiplot")

library(ggbiplot)
ggbiplot(data.pca)

ggbiplot(data.pca, labels=rownames(data))   # Biplot is a two-variable scatterplot

data.num <- c(rep("1", 4), rep("2", 3), rep("3", 3))
ggbiplot(data.pca,ellipse=TRUE, labels=rownames(data), groups=data.num)


######################
#PCA is a technique that converts a large number of variables to a set of small number of variables in a dataset
#This reduced set of variables are known as Principal Components.
#Each of these Principal Components has a linear combination with the original set of variables.

