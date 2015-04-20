##' Calculate the ROT bandwidth from either a data frame, or from p and n.
##'
##' @title ROT bandwidth
##' @param x the number of variables (if y is missing), or a data frame or a matrix (if y is not missing).
##' @param y the number of observations. If y is missing, x should be the data matrix.
##' @export
##' @return ROT bandwidth.
ROT <- function(x, y = NULL){
    if(is.null(y)){
        if(inherits(x, c("data.frame", "matrix"))){
            n <- nrow(x)
            p <- ncol(x)
        }
    }else{
        if(is.numeric(x) && x > 0 && is.numeric(y) && y > 0){
            p = x
            n = y
        }else
            stop("Wrong x, y.")
    }
    h <- n ^ (-1 / (p + 4)) ## Scott's ROT
    return(h)
}

