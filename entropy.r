#!/usr/bin/env Rscript

input<-file('stdin', 'r')
row <- readLines(input, n=1)

entropy = function(s)
   {freq = prop.table(table(strsplit(s, '')[1]))
    -sum(freq * log(freq, base = 2))}
 
print(entropy(row))
