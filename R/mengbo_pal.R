#' Return function to interpolate a mengbo color palette
#'
#' This function gets a pallete by name from the list ("main" by default),
#' has a boolean condition determining whether to reverse the order or not, and
#' additional arguments to pass on to colorRampPallete()
#' (such as an alpha value).
#'
#' @param palette Character name of palette in mengbo_palettes
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments to pass to colorRampPalette()
#'
#' @return Another function.
#' @importFrom grDevices colorRampPalette
#' @note
#' Changes or new color palettes are added in this list.
#' @examples
#' mengbo_pal("main", alpha = 0.8)
#' mengbo_pal("cool")(10)
#' @export

mengbo_pal <- function(palette = "main", reverse = FALSE, ...) {
  pal <- mengbo_palettes[[palette]]
  if (reverse) pal <- rev(pal)
  colorRampPalette(pal, ...)
}

