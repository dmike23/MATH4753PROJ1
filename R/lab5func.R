
#P(Y=10), Y~NegBin(p=0.4,r=3).   (Book theory)
#  This means that in R we need n=3 (size), x=y-r=10-3=7
 # Nu Failures, Nu of successes, prob success
#' fucntion for Lab 5
#'
#' @param y
#' @param r
#' @param p
#'
#' @return
#' @export
#'
#' @examples
mynbin=function(y,r,p){
  choose(y-1,r-1)*p^r*(1-p)^(y-r)
}

mynbin(10,3,0.4)

    #P(Y=10), Y~NegBin(p=0.4,r=3).   (Book theory)
#  This means that in R we need n=3 (size), x=y-r=10-3=7
dnbinom(7,3,0.4)  # Nu Failures, Nu of successes, prob success
mynbin=function(y,r,p){
choose(y-1,r-1)*p^r*(1-p)^(y-r)
}
mynbin(10,3,0.4)

