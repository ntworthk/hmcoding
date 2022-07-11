library(tidyverse)
library(palmerpenguins)
library(corrplot)

penguin_colours <- c("Chinstrap" = "#c45bcb", "Gentoo" = "#057076", "Adelie" = "#ff8000")
island_colours <- c("Biscoe" = "#c45bcb", "Dream" = "#057076", "Torgersen" = "#ff8000")
sex_colours <- c("Male" = "#c45bcb", "Female" = "#057076")

"Which island has the most penguins? Which island has the most Adelie penguins?"
penguins %>%
  count(island)

penguins %>%
  ggplot(aes(x = species, fill = island)) +
  geom_bar(position = position_dodge()) +
  scale_fill_manual(values = island_colours)


"Is there a relationship between bill length and bill depth? For example, do penguins with longer bills also have deeper bills?"
penguins %>%
  ggplot(aes(x = bill_length_mm, y = bill_depth_mm)) +
  geom_point() +
  geom_smooth(method = "lm", formula = "y ~ x")

corr <- cor(penguins[c("bill_length_mm", "bill_depth_mm", "flipper_length_mm", "body_mass_g")], use = "pairwise.complete.obs")
corrplot(corr, method = "number")

"Do female penguins have longer or shorter flippers than male penguins?"
penguins %>%
  ggplot(aes(x = flipper_length_mm, y = sex, colour = sex)) +
  geom_point() +
  scale_colour_manual(values = sex_colours)

"Which species of penguin has the longest flippers?"
penguins %>%
  ggplot(aes(x = flipper_length_mm, y = species, colour = species)) +
  geom_violin() +
  geom_point() +
  scale_colour_manual(values = penguin_colours)

"How heavy is the heaviest penguin? Which species is the heaviest?"
penguins %>%
  ggplot(aes(x = body_mass_g, y = flipper_length_mm , colour = species)) +
  geom_point() +
  scale_colour_manual(values = penguin_colours)

View(penguins)
