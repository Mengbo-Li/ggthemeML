## ----setup, include = FALSE-----------------------------------------------------------------------
options(width = 100, digits = 4)
knitr::opts_chunk$set(collapse = TRUE, 
                      comment = "#>", 
                      echo = TRUE, 
                      cache = FALSE, 
                      prompt = FALSE,
                      tidy = TRUE,
                      comment = NA, 
                      message = FALSE, 
                      warning = FALSE, 
                      tidy = TRUE, 
                      tidy.opts = list(width.cutoff = 60),
                      fig.width = 8, 
                      fig.height = 5, 
                      dev = "png")

## -------------------------------------------------------------------------------------------------
library(ggthemeML)
library(scales)

## -------------------------------------------------------------------------------------------------
names(ggthemeML:::mengbo_palettes)
show_col(mengbo_pal("main")(8))
show_col(mengbo_pal("cool")(4))
show_col(mengbo_pal("hot")(4))
show_col(mengbo_pal("pastel")(8))
show_col(mengbo_pal("light")(8))
show_col(mengbo_pal("grey")(5))
show_col(mengbo_pal("opposite")(6))

## -------------------------------------------------------------------------------------------------
show_col(mengbo_pal("main")(16))

## -------------------------------------------------------------------------------------------------
mtcars2 <- within(mtcars, {
  vs <- factor(vs, labels = c("V-shaped", "Straight"))
  am <- factor(am, labels = c("Automatic", "Manual"))
  cyl  <- factor(cyl)
  gear <- factor(gear)
})

p1 <- ggplot(mtcars2) +
  geom_point(aes(x = wt, y = mpg, colour = gear)) +
  labs(
    title = "Fuel economy declines as weight increases",
    subtitle = "(1973-74)",
    caption = "Data from the 1974 Motor Trend US magazine.",
    tag = "Figure 1",
    x = "Weight (1000 lbs)",
    y = "Fuel economy (mpg)",
    colour = "Gears"
  )

## -------------------------------------------------------------------------------------------------
p1 + theme_mengbo()
p1 + facet_wrap(~ gear) +  theme_mengbo()

## -------------------------------------------------------------------------------------------------
p1 + scale_color_mengbo("main") + theme_mengbo()

## -------------------------------------------------------------------------------------------------
p1 + theme_mengbo(clean_background = FALSE)
p1 + facet_wrap(~ gear) + theme_mengbo(clean_background = FALSE)

## -------------------------------------------------------------------------------------------------
ggplot(iris, aes(Sepal.Width, Sepal.Length, color = Sepal.Length)) +
  geom_point(size = 4) +
  scale_color_mengbo("main", discrete = FALSE) + 
  theme_mengbo()

## -------------------------------------------------------------------------------------------------
sessionInfo()

