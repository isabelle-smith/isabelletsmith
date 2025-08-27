
## Isabelle T. Smith, 2025.

########################################################################################################################


#' Printing function for RMD chunks.
#' 
#' `iprint()` prints object(s) using [cat()], without spaces
#' in-between objects, and with an optional return at the end.
#' Ideal for labeling output in a chunk when working in RMD.
#' 
#' This function is not worth using over [cat()] if you are
#' printing to the console (even if you don't want spaces).
#' 
#'
#' @param ... R object(s)
#' @param newline logical. Whether or not to go to a
#'  new line at the end of printing; defaults to `TRUE`.
#'
#' @return Nothing (actually an invisible `NULL`; see
#'  [cat()] for details).
#' @export
#'
#' @examples
#' ## default (newline=TRUE)
#' iprint(c("a","b","c"))
#' iprint(c("x","y","z"))
#' ## no return at the end
#' iprint(c("a","b","c"), newline=FALSE)
#' iprint(c("x","y","z"), newline=FALSE)



# --------------------------------------


iprint <- function(..., newline=TRUE) {
  
  if (newline){
    cat(..., "\n", sep="")
  } else {
    cat(..., sep="")
  }
  
}


# --------------------------------------



########################################################################################################################
