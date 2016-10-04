makefakedf <- function(X) {
  data.frame(vInt = sample(1:50, 100, replace = TRUE),
             vDec = (sample.int(101,size = 100, replace = TRUE) - 1)/100,
             vChar = sample(letters, 100, replace = TRUE),
             vDate = sample(1:1000, 100, replace = TRUE) + (Sys.Date() - 1000)
             )
}