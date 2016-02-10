#!/usr/bin/env Rscript

library("scales")
data = read.csv(file = "data.csv", header = TRUE)
normal = NULL
rescaled = NULL
normal = cbind(data[1])

for(i in 2:11){
normalised = round(scale(data[i], center = FALSE, scale = apply(data[i], 2, sd, na.rm = TRUE)), digits = 3)
rescaled = round(rescale(normalised, to=c(0,9.9)), digits = 1)
normal = cbind(normal,rescaled)
}

write.table(normal, file = 'test.csv', row.names=FALSE,col.names=TRUE,sep=",",quote=FALSE)
