#! /usr/bin/env Rscript
mydata = read.table("data.csv")
cor(mydata, method = "spearman")
