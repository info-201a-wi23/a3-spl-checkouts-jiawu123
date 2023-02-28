# Load relevant libraries
library("scales")
library("dplyr")
library("ggplot2")

Charlotte_Brontë <- df %>%
  filter(Creator %in% c("Charlotte Brontë")) 


ggplot(data = Charlotte_Brontë) +
  geom_point(mapping = aes(x = CheckoutYear, y = Checkouts, color = UsageClass))+ labs(title ="Books checkouts usageclass from classical writer CCharlotte Brontë during the year of 2017-2023")
  