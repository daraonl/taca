getdupes <- function(X) {
  duplicated(X) | duplicated(X, fromLast = TRUE)
}