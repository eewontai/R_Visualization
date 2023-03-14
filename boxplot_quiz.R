install.packages("readxl")
install.packages("ggplot2")

library("readxl")
library("ggplot2")

setwd("L:/MBT/Austausch/Cho/Eewon/R_visualization/Boxplot_exercise")
getwd()

box = read_excel('boxplot_data_quiz.xlsx')
head(box)

#boxplot("1" ~ "length", data = rep_19, xlab = "Read",
#        ylab = "Length", main = "Length of sequence reads")



# Store the graph
box_plot <- ggplot(box, aes(x = length, y = 1))
# Add the geometric object box plot
box_plot +
  geom_boxplot()