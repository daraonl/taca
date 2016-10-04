checktz <- function(myTZ = "GMT") if (!(Sys.getenv("TZ") %in% 
  myTZ))
  {
  stop("System timezone not correctly set")
} else
{
  "Timezone correctly set. Good to go!"
}