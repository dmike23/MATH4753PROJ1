#' CLT Binomial function
## CLT will work with discrete or continuous distributions
## my Central Limit Function
## default values can be changed when the function is called
#'
#'Takes parameters n, iter, p and creates a histogram in the form of density plot.
#' n is the size, p is the probability, iter is the iterations
#' @param n
#' @param iter
#' @param p
#' @param ...
#'
#' @return a binominal density curve plot in the form of a histogram
#' @export
#'
#' @examples mycltb(n=5,iter=10000,p=0.5)

mycltb=function(n,iter,p=0.5,...){


  y=rbinom(n*iter,size=n,prob=p)
  data=matrix(y,nr=n,nc=iter,byrow=TRUE)
  w=apply(data,2,mean)
  param=hist(w,plot=FALSE)
  ymax=max(param$density)

  ymax=1.1*ymax

  hist(w,freq=FALSE,  ylim=c(0,ymax),
       main=paste("Histogram of sample mean","\n", "sample size= ",n,sep=""),
       xlab="Sample mean",...)
  curve(dnorm(x,mean=n*p,sd=sqrt(p*(1-p))),add=TRUE,col="Red",lty=2,lwd=3)

}
