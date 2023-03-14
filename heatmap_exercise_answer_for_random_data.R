# heatmap exercise answer for random data

install.packages("readxl")
library("readxl")

setwd("L:/MBT/Austausch/Cho/Eewon/R_visualization")   # set working directory
getwd()

df <- read_excel("strain_gene_random_data_exercise.xlsx")
head(df)

col <- c("green", "yellow")

data <- as.matrix(df[, -c(1)])
data
rownames(data) <- df[["strain"]]
colnames(data) <- colnames(df)[-c(1)]
heatmap(data, scale = "none", col=col)



