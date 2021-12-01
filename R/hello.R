#' Internal cache for storing lesson objects
#'
#' @description a test function
#'
#' @details details
#' @param path a path to the current lesson 
#' @rdname lesson_storage
#' @keywords internal
set_this_lesson <- function(path) .store$set(path)

#' @rdname lesson_storage
clear_this_lesson <- function() .store$clear()

#' @rdname lesson_storage
this_lesson <- function(path) {
  if (.store$valid(path)) .store$get() else .store$set(path)
}

.lesson_store <- function() {
  .this_diff <- NULL
  .this_status <- NULL
  .this_lesson <- NULL

  list(
    get = function() invisible(.this_lesson),
    valid = function(path) TRUE,
    set = function(path) {
      .this_diff   <<- rnorm(1)
      .this_status <<- runif(1)
      .this_lesson <<- path
      invisible(.this_lesson)
    },
    clear = function() {
      .this_diff   <<- NULL
      .this_status <<- NULL
      .this_lesson <<- NULL
    }
  )
}
.store <- .lesson_store()

