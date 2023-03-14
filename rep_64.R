install.packages("readxl")
install.packages("ggplot2")

library("readxl")
library("ggplot2")

setwd("E:/R in MRI/Boxplot exercise")
getwd()

rep_64 = read_excel('rep_64.output.xlsx')
head(rep_64)

#boxplot("1" ~ "length", data = rep_64, xlab = "Read",
#        ylab = "Length", main = "Length of sequence reads")



# Store the graph
box_plot <- ggplot(rep_64, aes(x = 1, y = length))
# Add the geometric object box plot
box_plot +
  geom_boxplot()




