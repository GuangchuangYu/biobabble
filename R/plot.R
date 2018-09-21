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
    ggplot(data, aes_(x = ~x, y = ~y)) + geom_point(size=.8) + scale_y_reverse() + xlab(NULL) + ylab(NULL) +
        ## geom_image(image="http://guangchuangyu.github.io/blog_images/biobabble.jpg", x=550, y=-180, size=.1, asp=1.5) +
        labs(title=title, caption="学ggplot2画图\n请关注公众号\nbiobabble") +
        theme(plot.caption=element_text(hjust=0))
}

