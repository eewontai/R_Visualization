# heatmap on API heatmap.xlsx

install.packages("readxl")
install.packages("ggplot2")

library("readxl")
library("ggplot2")

setwd("L:/MBT/Austausch/Cho/Eewon")
getwd()

data = read_excel('API heatmap.xlsx', 6)
head(data)

df <- data[, -c(1:3)]
head(df)

heat = as.matrix(df)
colnames(heat) <- df[c(1), ]
rownames(heat) <- data[, c(3)]     ### error
# Error in dimnames(x) <- dn : 
# length of 'dimnames' [1] not equal to array extent

heatmap(heat)