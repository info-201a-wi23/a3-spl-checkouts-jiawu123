


install.packages("scales")

# Load relevant libraries
library("scales")
library("dplyr")
library("ggplot2")

popular_books <- df %>%
  filter(Creator %in% c("Thomas Angie", "Ta-Nehisi Coates", )) 
ggplot(popular_books) +
  geom_line(aes(x = CheckoutYear, y = Checkouts, color = Title)) + labs(title = "two popular racial related books with opposite standing checkout times during the year 2017-2023")

