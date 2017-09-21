#' Create dataframe of sample randomly generated data

makefakedf <- function(X) {
  data.frame(vInt = sample(1:50, 100, replace = TRUE),
             vDec = (sample.int(101,size = 100, replace = TRUE) - 1)/100,
             vChar = sample(letters, 100, replace = TRUE),
             vDate = sample(1:1000, 100, replace = TRUE) + (Sys.Date() - 1000),
             vLogic = sample(c(TRUE, FALSE), 100, replace = TRUE),
             vFact = factor(sample(c("Blue", "Green", "Red", "Yellow"), 100, replace = TRUE))
             )
}
