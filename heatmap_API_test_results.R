# heatmap_API_test_results

install.packages("ggplot2")
install.packages("readxl")   # read data from excel
library("readxl")   # declare that we use the package
library("ggplot2")

setwd("L:/MBT/Austausch/Cho/Eewon/R_visualization")   # set working directory
getwd()

df <- read_excel("API_test_results_pseudo_heatmap.xlsx")
head(df)

#data <- matrix(rnorm(100, 0, 10), nrow = 10, ncol = 10)           # Create example data
#colnames(data) <- paste0("col", 1:10)                             # Column names
#rownames(data) <- paste0("row", 1:10)  

col<- c("red", "blue")

data <- as.matrix(df[-c(1), -c(1)])
rownames(data) <- df[["Strain"]][-c(1)]
colnames(data) <- colnames(df)[-c(1)]
heatmap(data, scale = "none", col=col)




### ?heatmap