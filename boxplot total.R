install.packages("readxl")
install.packages("ggplot2")
install.packages("dplyr")

library("readxl")
library("ggplot2")
library("dplyr")

setwd("L:/MBT/Austausch/Cho/Eewon/R_visualization/Boxplot_exercise")
getwd()

rep_19 = read_excel('rep_19.output.xlsx')
rep_21 = read_excel('rep_21.output.xlsx')
rep_64 = read_excel('rep_64.output.xlsx')
rep_75 = read_excel('rep_75.output.xlsx')

#selected read and length and made new dataframes
rep_19_cut = rep_19 %>% select(read, length)
glimpse(rep_19_cut)
head(rep_19_cut)
rep_21_cut = rep_21 %>% select(read, length)
glimpse(rep_21_cut)
head(rep_21_cut)
rep_64_cut = rep_64 %>% select(read, length)
glimpse(rep_64_cut)
head(rep_64_cut)
rep_75_cut = rep_75 %>% select(read, length)
glimpse(rep_75_cut)
head(rep_75_cut)

#tried to replace all values of read in all dataframe with numbers
for (i in 1:nrow(rep_19_cut)){
  rep_19_cut[i,1] <- "rep_19"
}
for (i in 1:nrow(rep_21_cut)){
  rep_21_cut[i,1] <- "rep_21"
}
for (i in 1:nrow(rep_64_cut)){
  rep_64_cut[i,1] <- "rep_64"
}
for (i in 1:nrow(rep_75_cut)){
  rep_75_cut[i,1] <- "rep_75"
}
head(rep_19_cut)
rep_tot <- rbind(rep_19_cut, rep_21_cut, rep_64_cut, rep_75_cut)
rep_tot

#boxplot("1" ~ "length", data = rep_19, xlab = "Read",
#        ylab = "Length", main = "Length of sequence reads")

boxplot <- ggplot(rep_tot, aes(x=read, y=length))
boxplot +
  geom_boxplot()




head(rep_19)
head(rep_21)
head(rep_64)
head(rep_75)