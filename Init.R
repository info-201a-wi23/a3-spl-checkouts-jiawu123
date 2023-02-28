# A file to initially edit the data 
install.packages("maps")
library(dplyr)
library(ggplot2)
library(maps)
library(mapproj)
library(scales)



# Load data 
df <- read.csv("/Users/assyrianprince/Downloads/2017-2023-10-Checkouts-SPL-Data.csv")
df_selected <- df %>%
  filter(CheckoutYear == 2020)


df_chosen <- df %>% 
  filter(CheckoutYear == 2017)




