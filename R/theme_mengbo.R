#' Plotting theme modified from theme_bw
#'
#' @param base_size base font size, given in pts
#' @param base_family base font family
#' @param base_line_size base size for line elements
#' @param base_rect_size base size for rect elements
#' @param clean_background Logical, whether to keep the grid guidelines
#'
#' @details
#' \describe{
#' \item{`theme_mengbo()`}{
#' Mengbo's own ggplot theme modified from the classic dark-on-light ggplot2
#' theme.
#' }}
#'
#' @examples
#' mtcars2 <- within(mtcars, {
#'   vs <- factor(vs, labels = c("V-shaped", "Straight"))
#'   am <- factor(am, labels = c("Automatic", "Manual"))
#'   cyl  <- factor(cyl)
#'   gear <- factor(gear)
#' })
#'
#' p1 <- ggplot(mtcars2) +
#'   geom_point(aes(x = wt, y = mpg, colour = gear)) +
#'   labs(
#'     title = "Fuel economy declines as weight increases",
#'     subtitle = "(1973-74)",
#'     caption = "Data from the 1974 Motor Trend US magazine.",
#'     # tag = "Figure 1",
#'     x = "Weight (1000 lbs)",
#'     y = "Fuel economy (mpg)",
#'     colour = "Gears"
#'   )
#'
#' p1 + theme_mengbo()
#'
#' @export
theme_mengbo <- function(base_size = 14,
                         base_family = "",
                         base_line_size = base_size / 20,
                         base_rect_size = base_size / 20,
                         clean_background = TRUE) {
  half_line <- base_size / 2
  # Starts with theme_grey and then modify some parts
  if (clean_background) {
    theme_grey(
      base_size = base_size,
      base_family = base_family,
      base_line_size = base_line_size,
      base_rect_size = base_rect_size
    ) %+replace%
      theme(
        # axis text
        axis.line = element_line(colour = "black", size = 0.5),
        axis.text = element_text(size = rel(1.04), colour = "black"),
        axis.text.x = element_text(margin = margin(t = 0.8 * half_line / 2),
                                   vjust = -0.4),
        axis.text.y = element_text(margin = margin(r = half_line / 2),
                                   hjust = 2.4),
        axis.ticks = element_line(colour = "black"),
        axis.title.x = element_text(size = rel(1.2),
                                    margin = margin(t = half_line / 2),
                                    hjust = 0.54,
                                    vjust = -1),
        axis.title.y = element_text(size = rel(1.2),
                                    angle = 90,
                                    margin = margin(r = half_line / 2),
                                    vjust = 2.8),
        # axis ticks
        axis.ticks.length =  unit(half_line / 1.2, "pt"),
        # white background and dark border
        panel.background = element_blank(),
        panel.border = element_blank(),
        # make gridlines dark, same contrast with white as in theme_grey
        panel.grid = element_blank(),
        panel.grid.minor = element_blank(),
        panel.grid.major = element_blank(),
        # contour strips to match panel contour
        strip.background = element_rect(fill = "#e6e6e6",
                                        size = 0),
        strip.text = element_text(face = "bold",
                                  color = "black",
                                  size = rel(1.04),
                                  margin = margin(t = 0.5 * half_line,
                                                  b = 0.5 * half_line,
                                                  r = 0.8 * half_line,
                                                  l = 0.8 * half_line)),
        # legend
        legend.text = element_text(size = rel(1)),
        legend.title = element_text(size = rel(1.2),
                                    vjust = 0.5,
                                    color = "black"),
        # match legend key to background
        legend.background =  element_blank(),
        legend.key = element_blank(),
        # titles
        plot.title = element_text(size = rel(1.4),
                                  hjust = 0.5,
                                  vjust = 1,
                                  margin = margin(b = half_line)),
        plot.subtitle = element_text(size = rel(0.8),
                                     hjust = 0.5,
                                     vjust = 2,
                                     margin = margin(b = half_line)),
        # caption
        plot.caption = element_text(size = rel(0.8),
                                    hjust = 0.5,
                                    vjust = -2.4,
                                    margin = margin(t = half_line,
                                                    b = half_line)),
        complete = TRUE
      )
  } else {
    theme_grey(
      base_size = base_size,
      base_family = base_family,
      base_line_size = base_line_size,
      base_rect_size = base_rect_size
    ) %+replace%
      theme(
        # axis text
        axis.text = element_text(size = rel(1.04), colour = "black"),
        axis.text.x = element_text(margin = margin(t = 0.8 * half_line / 2),
                                   vjust = -0.4),
        axis.text.y = element_text(margin = margin(r = half_line / 2),
                                   hjust = 2.4),
        axis.ticks = element_line(colour = "black"),
        axis.title.x = element_text(size = rel(1.2),
                                    margin = margin(t = half_line / 2),
                                    hjust = 0.54,
                                    vjust = -1),
        axis.title.y = element_text(size = rel(1.2),
                                    angle = 90,
                                    margin = margin(r = half_line / 2),
                                    vjust = 2.8),
        # axis ticks
        axis.ticks.length =  unit(half_line / 1.2, "pt"),
        # white background and dark border
        panel.background = element_blank(),
        panel.border = element_rect(fill = NA, colour = "black"),
        # make gridlines
        panel.grid = element_line(size = 0.1, color = "black"),
        panel.grid.minor = element_blank(),
        # contour strips to match panel contour
        strip.background = element_rect(fill = "#e6e6e6",
                                        size = 0),
        strip.text = element_text(face = "bold",
                                  color = "black",
                                  size = rel(1.04),
                                  margin = margin(t = 0.5 * half_line,
                                                  b = 0.5 * half_line,
                                                  r = 0.8 * half_line,
                                                  l = 0.8 * half_line)),
        # legend
        legend.text = element_text(size = rel(1)),
        legend.title = element_text(size = rel(1.2),
                                    vjust = 0.5,
                                    color = "black"),
        # match legend key to background
        legend.background =  element_blank(),
        legend.key = element_blank(),
        # titles
        plot.title = element_text(size = rel(1.4),
                                  hjust = 0.5,
                                  vjust = 1,
                                  margin = margin(b = half_line)),
        plot.subtitle = element_text(size = rel(0.8),
                                     hjust = 0.5,
                                     vjust = 2,
                                     margin = margin(b = half_line)),
        # caption
        plot.caption = element_text(size = rel(0.8),
                                    hjust = 0.5,
                                    vjust = -2.4,
                                    margin = margin(t = half_line,
                                                    b = half_line)),
        complete = TRUE
      )
  }
}
