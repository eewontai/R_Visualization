install.packages("readxl")
install.packages("ggplot2")

library("readxl")
library("ggplot2")

setwd("E:/R in MRI/Boxplot exercise")
getwd()

rep_21 = read_excel('rep_21.output.xlsx')
head(rep_21)

#boxplot("1" ~ "length", data = rep_21, xlab = "Read",
#        ylab = "Length", main = "Length of sequence reads")



# Store the graph
box_plot <- ggplot(rep_21, aes(x = 1, y = length))
# Add the geometric object box plot
box_plot +
  geom_boxplot()






