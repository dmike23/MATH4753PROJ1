
#' 95% confidence interval function
#' Creates a 95% confidence interval for the mean from a single sample x
#' @param x
#'
#' @return confidence interval with 95% confidence level
#' @export
#'
#' @examples
#' x <- c(1,2,3,4,6,7,9)
# myci(x)
myci <- function(x) {
  a <- mean(x)
  s <- sd(x)
  n <- length(x)
  error <- qt(0.975,df=n-1)*s/sqrt(n)
  left <- a-error
  right <- a+error
  cat("Confidence Interval with 95% confidence level is [",left,",",right,"].")
}
