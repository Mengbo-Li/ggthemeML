#' Fill scale constructor for mengbo colors
#'
#' @param palette Character name of palette in mengbo_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_fill_gradientn(), used respectively when discrete is
#'            TRUE or FALSE
#'
#' @examples
#' # Fill by discrete variable with different palette + remove legend (guide)
#' ggplot(mpg, aes(manufacturer, fill = manufacturer)) + geom_bar() +
#' theme(axis.text.x = element_text(angle = 45, hjust = 1)) +
#' scale_fill_mengbo(palette = "mixed", guide = "none")
#'
#' @export
scale_fill_mengbo <- function(palette = "main", discrete = TRUE,
                              reverse = FALSE, ...) {
  pal <- mengbo_pal(palette = palette, reverse = reverse)
  if (discrete) {
    discrete_scale("fill", paste0("mengbo_", palette), palette = pal, ...)
  } else {
    scale_fill_gradientn(colours = pal(256), ...)
  }
}

