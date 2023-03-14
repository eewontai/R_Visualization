# venn_absence_presence_real_data_7_strains

install.packages("readxl")
library("readxl")

setwd("L:/MBT/Austausch/Cho/Eewon/R_visualization/Roary_Acinetobacter")   # set working directory
getwd()

df <- read_excel("gene_presence_absence.xlsx")
# df <- as.matrix(read_excel("gene_presence_absence.xlsx"))
head(df)   ## now df is a matrix

install.packages("venn")         # Install & load venn package
library("venn")

# venn(7)
venn(df[2:8], zcolor = "style")



##############
# 3 strains times 3
# 7, 9, 10
# 2, 3, 6
# 4, 5, 8

install.packages("readxl")
library("readxl")

setwd("L:/MBT/Austausch/Cho/Eewon/R_visualization/Roary_Acinetobacter")   # set working directory
getwd()

df <- read_excel("gene_presence_absence.xlsx")
# df <- as.matrix(read_excel("gene_presence_absence.xlsx"))
head(df)   ## now df is a matrix

install.packages("venn")         # Install & load venn package
library("venn")

venn(3)
venn(df[, c(7, 9, 10)], zcolor = "style")
venn(df[, c(2, 3, 6)], zcolor = "style")
venn(df[, c(4, 5, 8)], zcolor = "style")

################
# which genes does all the strains have in common?

install.packages("readxl")
library("readxl")

setwd("L:/MBT/Austausch/Cho/Eewon/R_visualization/Roary_Acinetobacter")   # set working directory
getwd()

df <- read_excel("gene_presence_absence.xlsx")
df <- data.frame(df)
head(df)

l <- list()
l
for(i in 1:nrow(df)){
  if(df[i,2]==df[i,3] && df[i,3]==df[i,4] && df[i,4]==df[i,5] && df[i,5]==df[i,6] && df[i,6]==df[i,7] && df[i,7]==df[i,8] && df[i,8]==df[i,9] && df[i,9]==df[i,10]){
    append(l, df[i,1])
     print(df[i,1])
  }
}
l

for(i in 1:nrow(df)){
  if(df[i,2]==1 && df[i,3]==1 && df[i,4]==1 && df[i,5]==1 && df[i,6]==1 && df[i,7]==1 && df[i,8]==1 && df[i,9]==1 && df[i,10]==1){
    append(l, df[i,1])
    print(df[i,1])
  }
}
l