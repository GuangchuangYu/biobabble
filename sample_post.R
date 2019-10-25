#!/usr/bin/env Rscript

x <- readLines("README.md", encoding="UTF-8")
y <- x[grep("weixin", x)]
y <- y[grep("^\\+", y)]
res <- sample(y, 8)
res <- res[order(nchar(res, type="width"))]

res <- paste("\n**往期精彩**\n",
          paste(res, '\n', collapse=""))

clipr::write_clip(res, allow_non_interactive = TRUE)

message("sample posts were copied to clipboard")