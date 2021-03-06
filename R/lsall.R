#' Generate detailed list of all objects in Global Environment

lsall <- function(pos = 1, pattern, order.by, decreasing = FALSE,
  head = FALSE, n = 5) {
  napply <- function(names, fn) sapply(names, function(x) fn(get(x,
    pos = pos)))
  names <- ls(pos = pos, pattern = pattern)
  obj.class <- napply(names, function(x) as.character(class(x))[1])
  obj.mode <- napply(names, mode)
  obj.type <- ifelse(is.na(obj.class), obj.mode, obj.class)
  obj.size <- napply(names, object.size)
  obj.prettysize <- sapply(obj.size, function(r) prettyNum(r,
    big.mark = ","))
  obj.dim <- t(napply(names, function(x) as.numeric(dim(x))[1:2]))
  vec <- is.na(obj.dim)[, 1] & (obj.type != "function")
  obj.dim[vec, 1] <- napply(names, length)[vec]
  out <- data.frame(obj.type, obj.size, obj.prettysize, obj.dim)
  names(out) <- c("Type", "Size", "PrettySize", "Rows", "Columns")
  if (!missing(order.by))
    out <- out[order(out[[order.by]], decreasing = decreasing),
      ]
  out <- out[c("Type", "PrettySize", "Rows", "Columns")]
  names(out) <- c("Type", "Size", "Rows", "Columns")
  if (head)
    out <- head(out, n)
  out
}

#' Sourced from:
#' http://stackoverflow.com/questions/1358003/tricks-to-manage-the-available-memory-in-an-r-session
#' Post by Dirk Eddelbuettel, also citing postings by Petr Pikal and David Hinds
#' to the r-help list in 2004
