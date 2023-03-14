# Flow diagram (Sankey)
# strain-gene-origin 3 vertical lines


# using networkD3 package
# flow diagram of strain-gene (2 types of data)
# from incidence matrix

install.packages("readxl")
library("readxl")

setwd("Y:/Allgemein/Cho/Eewon/R_visualization/Roary_Acinetobacter")   # set working directory
getwd()

mat <- as.matrix(data.frame(read_excel("gene_presence_absence_sorted_transpose.xlsx")[, -c(1)]))
mat

install.packages("networkD3")
install.packages("dplyr")

# Library
library(networkD3)
library(dplyr)

# Create an incidence matrix. Usually the flow goes from the row names to the column names.
# Remember that our connection are directed since we are working with a flow.


colnames(mat)   # strains
rownames(mat) = data.frame(read_excel("gene_presence_absence_sorted_transpose.xlsx"))[, c(1)]   # genes
rownames(mat)

install.packages("tidyr")
library(tidyr)
install.packages("tibble")
library(tibble)

# Transform it to connection data frame with tidyr from the tidyverse:
links <- mat %>% 
  as.data.frame() %>% 
  rownames_to_column(var="source") %>% 
  gather(key="target", value="value", -1) %>%
  filter(value != 0)

# From these flows we need to create a node data frame: it lists every entities involved in the flow
nodes <- data.frame(
  name=c(as.character(links$source), as.character(links$target)) %>% 
    unique()
)

# With networkD3, connection must be provided using id, not using real name like in the links dataframe.. So we need to reformat it.
links$IDsource <- match(links$source, nodes$name)-1 
links$IDtarget <- match(links$target, nodes$name)-1

# Make the Network
p <- sankeyNetwork(Links = links, Nodes = nodes,
                   Source = "IDsource", Target = "IDtarget",
                   Value = "value", NodeID = "name", 
                   sinksRight=FALSE)

p




################################################################
# flow diagram of strain-gene-origin, three types of data
# from connection data frame (because 3D diagram)

library(networkD3)
nodes = data.frame("name" = 
                     c("catA", "dld", "vat", "catB", 
                       "murF", "cat", "tetA", "aac", "crp",
                       "V106_7_clean", 
                       "V110_1_clean", 
                       "V87_4_clean", 
                       "V87_7_clean", 
                       "V89_4_clean", 
                       "V91_13_clean", 
                       "V92_1_clean", 
                       "V91_4B_clean", 
                       "V91_7_clean",
                       "Soil", "Water", "Lettuce"
                     ))# Nodes

links = as.data.frame(matrix(c(
  0, 9, 1,
  0, 10, 1,
  0, 13, 1,
  0, 14, 1,
  0, 16, 1,
  0, 17, 1,
  1, 9, 1,
  1, 10, 1,
  1, 13, 1,
  1, 14, 1,
  1, 16, 1,
  1, 17, 1,
  2, 9, 1,
  2, 10, 1,
  2, 13, 1,
  2, 14, 1,
  2, 16, 1,
  2, 17, 1,
  3, 9, 1,
  3, 10, 1,
  3, 13, 1,
  3, 14, 1,
  3, 16, 1,
  3, 17, 1,
  4, 9, 1,
  4, 13, 1,
  4, 14, 1,
  4, 16, 1,
  4, 17, 1,
  5, 9, 1,
  5, 13, 1,
  5, 14, 1,
  5, 16, 1,
  5, 17, 1,
  6, 9, 1,
  6, 10, 1,
  6, 13, 1,
  7, 11, 1,
  7, 12, 1,
  7, 15, 1,
  8, 10, 1,
  9, 18, 1,
  10, 19, 1,
  11, 20, 1,
  12, 19, 1,
  13, 20, 1,
  14, 18, 1,
  15, 20, 1,
  16, 20, 1,
  17, 19, 1
  ),
  byrow = TRUE, ncol = 3))
# Each row represents a link. The first number
# represents the node being connected from. 
# the second number represents the node connected to.
# The third number is the value of the node

names(links) = c("source", "target", "value")
sankeyNetwork(Links = links, Nodes = nodes,
              Source = "source", Target = "target",
              Value = "value", NodeID = "name",
              fontSize= 12, nodeWidth = 30)
