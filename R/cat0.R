

## Isabelle T. Smith
## 2026.09.15


########################################################################################################################


#' Concatenate and Print without Spaces
#'
#' @param ... \R object(s), and any additional arguments to [cat()].
#' @param sep Strings to append after each object.
#'
#' @returns None (invisible NULL).
#' #export
#'
#' @examples
#' #cat(letters)
#' #cat("\n")
#' #cat0(letters)
#'
#'


# --------------------------------------


cat0 <- function(..., sep="") {
  cat(..., sep=sep)
}


# --------------------------------------


########################################################################################################################

