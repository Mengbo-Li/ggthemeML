#' Color scale constructor for mengbo colors
#'
#' @param palette Character name of palette in drsimonj_palettes
#' @param discrete Boolean indicating whether color aesthetic is discrete or not
#' @param reverse Boolean indicating whether the palette should be reversed
#' @param ... Additional arguments passed to discrete_scale() or
#'            scale_color_gradientn(), used respectively when discrete is
#             TRUE or FALSE
#' @examples
#' # Color by discrete variable using default palette
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Species)) +
#' geom_point(size = 4) + scale_color_mengbo()
#' # Color by numeric variable with cool palette
#' ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
#' geom_point(size = 4) + scale_color_mengbo(discrete = FALSE, palette = "cool")
#'
#' @export
scale_color_mengbo <- function(palette = "main", discrete = TRUE, reverse = FALSE, ...) {
  pal <- mengbo_pal(palette = palette, reverse = reverse)
  if (discrete) {
    discrete_scale("colour", paste0("mengbo_", palette), palette = pal, ...)
  } else {
    scale_color_gradientn(colours = pal(256), ...)
  }
}
