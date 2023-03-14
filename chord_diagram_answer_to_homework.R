install.packages("circlize")
library(circlize)

esm <- EuStockMarkets[c(1:20), ]
esm <- as.matrix(esm)

head(esm)

chordDiagram(esm)