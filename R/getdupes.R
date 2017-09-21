#' Identify all instances of duplicate values in variable (extension of existing
#' base function)

getdupes <- function(X) {
  duplicated(X) | duplicated(X, fromLast = TRUE)
}
