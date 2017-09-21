tabled <- function(X,Y) {

  ddd <- data.frame(X, Y)

  table(ddd[,1], ddd[,2], useNA="ifany")
}
