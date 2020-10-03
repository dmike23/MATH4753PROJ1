#' Lab 6 function
#'
#' @param mu
#' @param sigma
#' @param a
#'
#' @return
#' @export
#'
#' @examples
myncurve = function(mu, sigma,a){
  curve(dnorm(x,mean=mu,sd=sigma), xlim = c(mu-3*sigma, mu + 3*sigma))
  xcurve=seq(-1000,a,length=1000)
  ycurve=dnorm(xcurve,mu,sigma)
  polygon(x = c(-Inf,xcurve,a), y=c(0,ycurve,0), col = "green")
  area = pnorm(a,mu,sigma)-pnorm(-Inf,mu,sigma)
  area = round(area,4)
  list(area)
}
