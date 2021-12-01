#' Demonstrate the effects of "Delayed assign"
#'
#' When the package is loaded, this function will be evaulated and assigned to
#' a variable called `LOAD_TIME`.
#'
#' @return the current time
#' @examples
#' LOAD_TIME
#' delayed_assign_example()
delayed_assign_example <- function() {
  Sys.time()
}
