install.packages("readxl")
install.packages("ggplot2")

library("readxl")
library("ggplot2")

setwd("E:/R in MRI/Boxplot exercise")
getwd()

rep_75 = read_excel('rep_75.output.xlsx')
head(rep_75)

#boxplot("1" ~ "length", data = rep_75, xlab = "Read",
#        ylab = "Length", main = "Length of sequence reads")



# Store the graph
box_plot <- ggplot(rep_75, aes(x = 1, y = length))
# Add the geometric object box plot
box_plot +
  geom_boxplot()




