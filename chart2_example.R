# Load relevant libraries
library("scales")
library("dplyr")
library("ggplot2")

popular_author <- df %>%
  filter(Creator %in% c("Charlotte Brontë", "Thomas, Angie")) 
ggplot(popular_author) +
  geom_line(aes(x = CheckoutYear, y = Checkouts, color = Creator)) + labs(title = "Two popular author, one one racial issue, one one technology during the year of 2017-2023") +
  facet_wrap(~Creator)
