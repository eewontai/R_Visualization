install.packages("readxl")   # read data from excel
install.packages("ggplot2")  # data visulization package

library("readxl")   # declare that we use the package
library("ggplot2")

setwd("L:/MBT/Austausch/Cho/Eewon/R_visualization/Boxplot_exercise")   # set working directory
getwd()

rep_19 = read_excel('rep_19.output.xlsx')
head(rep_19)   # show first few lines of data

# Store the graph
box_plot <- ggplot(rep_19, aes(x = 1, y = length))
# Add the geometric object box plot
box_plot +
  geom_boxplot()

## Data + coordinate system + geom = boxplot
## geom: visual marks that represent data points


# first quartile (25%)
# median
# second quartile (75%)
# minimum, maximum (without outliers)
# outliers - observation that is very distant from the rest of the data

data()

USArrests