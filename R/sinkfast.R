sinkfast <- function() {
 if(!(.Platform$OS.type %in% c("windows", "unix"))) {
    stop("Command currently not available for your OS. Use sink() instead.")}

  if(.Platform$OS.type %in% "windows")
  {sinkpath <- "C:/R/Output/"} else if(.Platform$OS.type %in% "unix") {sinkpath <- "/home/R/Output/"}
  dir.create(file.path(sinkpath), showWarnings = FALSE)
  sinkfile <<- paste0(sinkpath, format(Sys.time(), "%Y%m%d_%H%M%S_%Z"), ".txt")
  sink(file=sinkfile)
  message(paste0("Console is now being saved to ", sinkfile, ".\nUse command \'sinkstop()\' to stop sinking."))
}
