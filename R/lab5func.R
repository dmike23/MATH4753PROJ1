
#' Negative Binomial Probability Distribution Function
#' This returns the probability distribution for a negative binomial random variable Y
#' @param y
#' @param r
#' @param p
#'
#' @return Probability distribution 
#' @export
#'
#' @examples
# mynbin(10,3,0.4)

mynbin=function(y,r,p){
  choose(y-1,r-1)*p^r*(1-p)^(y-r)
}
