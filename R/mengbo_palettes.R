#' Basic palettes
#' @examples
#' mengbo_palettes$main
#' @import colorspace
#' @export
mengbo_palettes <- list(
  `main`  = mengbo_cols("violet", "blue", "teal","green",
                        "yellow", "orange", "red", "pink"),
  `cool`  = mengbo_cols("violet", "blue", "teal","green"),
  `hot`   = mengbo_cols("yellow", "orange", "red", "pink"),
  `pastel` = mengbo_cols("pastelviolet",
                         "pastelblue",
                         "pastelteal",
                         "pastelgreen",
                         "pastelyellow",
                         "pastelorange",
                         "pastelred",
                         "pastelpink"),
  `light` = mengbo_cols("lightviolet",
                        "lightblue",
                        "lightteal",
                        "lightgreen",
                        "lightyellow",
                        "lightorange",
                        "lightred",
                        "lightpink"),
  `grey`  = mengbo_cols("white", "lightgrey", "midgrey", "darkgrey", "black"),
  `opposite` = mengbo_cols("red", "blue",
                           "lightred", "lightblue",
                           "pastelred", "pastelblue"),
  `opposite_ordinal` = mengbo_cols("red", "pastelred", "lightred", "lightblue","pastelblue", "blue"),
  `wehi_full` = c("#E01545", "#F37520", "#ECE953", "#49A942",
                  "#00A99F", "#00BCE7", "#2372B9", "#7D489C", "#58595B"),
  `wehi_light` = c("#E01545", "#F37520", "#ECE953", "#49A942",
                   "#00A99F", "#00BCE7", "#2372B9", "#7D489C") |>
    colorspace::lighten(amount = 0.5),
  `wehi_dark` = c("#E01545", "#F37520", "#ECE953", "#49A942",
                  "#00A99F", "#00BCE7", "#2372B9", "#7D489C") |>
    colorspace::darken(amount = 0.4),
  `wehi_mix` = c(colorspace::darken(c("#E01545", "#F37520", "#ECE953", "#49A942",
                                      "#00A99F", "#00BCE7", "#2372B9", "#7D489C"), amount = 0.4),
                 colorspace::lighten(c("#E01545", "#F37520", "#ECE953", "#49A942",
                                       "#00A99F", "#00BCE7", "#2372B9", "#7D489C"), amount = 0.5))[c(seq(1, 16, 2), seq(2, 16, 2))]
)
