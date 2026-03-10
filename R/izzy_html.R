
## modified: Isabelle T. Smith, 2026.
## created:  Yihui Xie, J. J. Allaire, Garrett Grolemund, 2026.

## 2026.03.10

########################################################################################################################


#' HTML Rendering for package `isabelletsmith`
#'
#' `izzy_html()` prepares an RMD document to be rendered into HTML.
#' It gets CSS and HTML template files from the `isabelletsmith` package
#' (<https://github.com/isabelle-smith/isabelletsmith>), then passes
#' those and any additional args into [rmarkdown::html_document()].
#'
#'
#' @param default_name string. Name of HTML template, if not "default".
#' @param toc logical. Whether or not to include table of contents.
#' @param toc_depth integer. Number of heading levels to include in table of contents.
#' @param ... other arguments to be passed to [rmarkdown::html_document()].
#'
#' @return R Markdown output format, to use with [rmarkdown::render()].
#'
#' @export
#'
#' @examples
#' ## base case
#' render("file.Rmd", izzy_html())
#'
#' ## changing TOC defaults
#' render("file.Rmd", izzy_html(toc=FALSE, toc_depth=5))
#'
#' ## different template name
#' render("file.Rmd", izzy_html(default_name="007-default"))
#'
#' ## additional argumentss
#' render("file.Rmd", izzy_html(code_folding="hide"))



# --------------------------------------


izzy_html = function(default_name="default", toc=TRUE, toc_depth=4, ...) {


  # locations of resource files in the package
  css       = system.file("Izzy-Files/styles.css",
                         package = "isabelletsmith")

  default       = system.file(paste0("Izzy-Files/", default_name, ".html"),
                         package = "isabelletsmith")



  # call the base html_document function
  rmarkdown::html_document(toc           = toc,
                           toc_depth     = toc_depth,
                           css           = css,
                           template      = default,
                           ...)


}


# --------------------------------------



########################################################################################################################
