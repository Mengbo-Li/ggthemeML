#' Function to extract mengbo colors as hex codes
#'
#' @param ... Character names of mnengbo_colors
#'
#' @examples
#' mengbo_cols()
#' mengbo_cols("red")
#' mengbo_cols("red", "blue")
#' @export
mengbo_cols <- function(...) {
  cols <- c(...)
  if (is.null(cols))
    return (mengbo_colors)
  mengbo_colors[cols]
}
