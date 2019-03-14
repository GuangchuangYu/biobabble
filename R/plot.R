##' plot function for biobabble
##'
##' 
##' @title bplot
##' @param data input data frame
##' @param title plot title
##' @return ggplot object
##' @importFrom ggplot2 ggplot
##' @importFrom ggplot2 aes_
##' @importFrom ggplot2 geom_point
##' @importFrom ggplot2 scale_y_reverse
##' @importFrom ggplot2 xlab
##' @importFrom ggplot2 ylab
##' @importFrom ggplot2 labs
##' @importFrom ggplot2 theme
##' @importFrom ggplot2 element_text
##' @export
##' @examples
##' data(mooncake)
##' bplot(mooncake)
##' @author Guangchuang Yu
bplot <- function(data, title="") {
    caption_file <- system.file("extdata/caption.txt", package="biobabble")
    caption <- readLines(caption_file, encoding="UTF-8")
    caption <- gsub("\\\\n", "\n", caption)
    ggplot(data, aes_(x = ~x, y = ~y)) + geom_point(size=.8) + scale_y_reverse() + xlab(NULL) + ylab(NULL) +
        ## geom_image(image="http://guangchuangyu.github.io/blog_images/biobabble.jpg", x=550, y=-180, size=.1, asp=1.5) +
        labs(title=title, caption=caption) +
        theme(plot.caption=element_text(hjust=0))
}

