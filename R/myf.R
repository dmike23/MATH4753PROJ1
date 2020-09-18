#' Square Function
#'
#'this function works by placing the output in the object quad.lm by making it a function of x

#'
#' @param x
#'
#' @return output in the object quad.lm.
#' @export
#'
#'


quadfun=function(x){
  quad.lm$coef[1] +quad.lm$coef[2]*x  + quad.lm$coef[3]*x^2 # this function works by placing the output in the object quad.lm by making it a function of x
}
