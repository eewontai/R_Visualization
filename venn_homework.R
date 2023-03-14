install.packages("gplots")
# load gplots package
library("gplots")

x <-list('Plants'=c(1,2,3,4,5,6,7,8,9,10),'Animals'=c(4,5,6,7,8,9,10,11), 'Aliens'=c(3,4,5,6,7,8,45,44))

# create Venn diagram with two sets
venn(x)