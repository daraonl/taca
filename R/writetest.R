writetest <- function(object)
{
  if (!(.Platform$OS.type %in% "windows"))
  {
    filelocation <- "C:/R/test.csv"
    write.csv(object, file = filelocation)
    ooo <- paste("Saved to", filelocation)
  } else
  {
    ooo <- ("Currently designed for Windows OS only")
  }
  return(ooo)
}