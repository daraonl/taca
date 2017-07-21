sinkstop <- function(X) {
  sink()
  sinkfile1 <- sinkfile
  message(paste0("Sink stopped.\nThe sinked console file is located at ", sinkfile1, "."))
  rm(list="sinkfile", envir=.GlobalEnv)}
