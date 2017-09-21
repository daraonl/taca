#' Simple modification of table command to include missing value counts by
#' default (if present)

tabled <- function(X,Y=NULL) {

  if(is.null(Y)){
    table(X, useNA="ifany")
      } else {

    ddd <- data.frame(X, Y)

    table(ddd[,1], ddd[,2], useNA="ifany")}
}
