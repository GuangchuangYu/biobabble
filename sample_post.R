#!/usr/bin/env Rscript

x <- readLines("README.md", encoding="UTF-8")
y <- x[grep("weixin", x)]
y <- y[grep("^\\+", y)]
res <- sample(y, 8)
res <- res[order(nchar(res, type="width"))]
cat("----\n")
cat('**往期精彩**\n')
cat(paste(res, '\n', collapse=""))

