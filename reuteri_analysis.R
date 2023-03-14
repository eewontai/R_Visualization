# reuteri heatmap


install.packages("ggplot2")
install.packages("readxl")   # read data from excel
library("readxl")   # declare that we use the package
library("ggplot2")

setwd("Y:/Allgemein/Cho/Eewon/R_visualization")   # set working directory
getwd()

df <- read_excel("gene_presence_absence_reuteri_Lu.xlsx")
head(df)

data <- t(as.matrix(df[-c(1), -c(1)]))
rownames(data) <- colnames(df)[-c(1)]
colnames(data) <- df[["Gene"]][-c(1)]
heatmap(data, scale="none")


# which genes

# 3. Genes only in 92071
df2 <- data.frame(df)

for(i in 1:nrow(df2)){
  if(df2[i,2]==1 && df2[i,3]==0){
    print(df2[i,1])
  }
}

# 3-1. Genes only in L_reuteri
for(i in 1:nrow(df2)){
  if(df2[i,2]==0 && df2[i,3]==1){
    print(df2[i,1])
  }
}





# venn diagram

install.packages("venn")         # Install & load venn package
library("venn")
venn(df[, -c(1)], zcolor = "red, blue", ilcs=0.8, sncs=1.2, opacity=0.5)  # pretty colors
