# Venn_diagram_example_data
# Using 2 R packages, ggVennDiagram and gplots

install.packages("ggVennDiagram")
library(ggVennDiagram)

# List of items
x <- list(A = 1:5, B = 2:7)
# 2D Venn diagram
ggVennDiagram(x)


# List of items
x <- list(A = 1:5, B = 2:7, C = 5:10)
# 3D Venn diagram
ggVennDiagram(x)


# List of items
x <- list(A = 1:5, B = 2:7, C = 5:10, D = 8:15)
# 4D Venn diagram
ggVennDiagram(x)


#########################################################
install.packages("gplots")
# load gplots package
library("gplots")

# use list as input
x <-list('Plants'=c(6,7,8),'Animals'=c(7,8,3,4))

# create Venn diagram with two sets
venn(x)

# creating venn diagram by passing 
# list as direct parameter
venn(list(YouTube=1:6,Netflix=3:8,Instagram=c(5,8:12)))


#######################################################
# HOMEWORK
# make a venn diagram of 3 sets
# c(1,2,3,4,5,6,7,8,9,10), c(4,5,6,7,8,9,10,11), c(3,4,5,6,7,8,45,44)