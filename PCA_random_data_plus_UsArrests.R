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

#####

USArrests

USArrests.pca <- prcomp(USArrests, center = TRUE,scale. = TRUE)

summary(USArrests.pca)

str(USArrests.pca)

library(devtools)
install_github("vqv/ggbiplot")

library(ggbiplot)

ggbiplot(USArrests.pca)

ggbiplot(USArrests.pca, labels=rownames(USArrests))

USArrests.region <- c("Southeast", "West", "Southwest", "Southeast", "West", "West", "Northeast", "Northeast", "Southeast", "Southeast", "West", "West", "Midwest", "Midwest", "Midwest", "Midwest", "Southeast", "Southeast", "Northeast", "Northeast", "Northeast", "Midwest", "Midwest", "Southeast", "Midwest", "West", "Midwest", "West", "Northeast", "Northeast", "Southeast", "Northeast", "Southeast", "Midwest", "Midwest", "Southeast", "West", "Northeast", "Northeast", "Southeast", "Midwest", "Southeast", "Southeast", "West", "Northeast", "Southeast", "West", "Southeast", "Midwest", "West")
ggbiplot(USArrests.pca,ellipse=TRUE, labels=rownames(USArrests), groups=USArrests.region)

ggbiplot(USArrests.pca,ellipse=TRUE, choices=c(3,4), labels=rownames(USArrests), groups=USArrests.region)
## choices - which PCs to plot
