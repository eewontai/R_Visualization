# chord diagram on made-up data

install.packages("readxl")
install.packages("circlize")

library(readxl)
library(circlize)

setwd("L:/MBT/Austausch/Cho/Eewon/R_visualization/Roary_Acinetobacter")
getwd()


df <- data.frame(read_excel("example_data_chord_diagram.xlsx"))
df <- df[, -c(1)]
df <- as.matrix(df)
head(df)


chordDiagram(df)




####################################################

# HOMEWORK
#data()

EuStockMarkets

####################################################

df2 <- data.frame(read_excel("gene_presence_absence_cropped_for_circos.xlsx"))
rows <- df2[, c(1)]
df2 <- df2[, -c(1)]
df2 <- as.matrix(df2)
rownames(df2) <- rows
head(df2)


chordDiagram(df2)
