

#' String Divider for Printing
#'
#' @param length_out Numeric value, greater than 0.
#' @param char_str Optional. String.
#' @param spac_str Optional. String.
#'
#' @returns
#' @export
#'
#' @examples

# --------------------------------------


divider <- function(length_out, char_str="-", spac_str=" ") {


  ## stops - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
  if ( !all(is.numeric(length_out)) )         { stop("Input `length_out` value must be numeric.")}
  if ( any(length_out <= 0) )                 { stop("Input `length_out` value must be strictly positive.")}
  if ( any(typeof(char_str) != "character") ) { stop("Input `char_str` value must be characters only.") }
  if ( any(typeof(spac_str) != "character") ) { stop("Input `spac_str` value must be characters only.") }
  ## - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -


  rep_str <- paste0(spac_str,
                    char_str)

  rep_tim <- ceiling( (length_out - nchar(char_str)) / nchar(rep_str) )

  divider <- ifelse(rep_tim>0,
                    paste0(char_str, strrep(rep_str, rep_tim)),
                    char_str)

  return(divider)

}


# --------------------------------------


########################################################################################################################

