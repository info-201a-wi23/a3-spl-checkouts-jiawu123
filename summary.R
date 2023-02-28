
# A file to initially edit the data 
library(dplyr)
library(ggplot2)
library(scales)
# Load data 
df <- read.csv("/Users/assyrianprince/Downloads/2017-2023-10-Checkouts-SPL-Data.csv")
df_selected <- df %>%
  filter(CheckoutYear == 2020)


df_chosen <- df %>% 
  filter(CheckoutYear == 2017)

# Load a string and table libraries
library(dplyr)
library(stringr)

# Duplicate np_data to avoid manipulating the original data frame.
summary_df <- df_selected
summarize_df <- df_chosen


# Q1. The total number of records in 2020 
 Total_record <- nrow(summary_df)
 
#Q2. The subject that has the highest number of checkout in 2020
  Highest_checkout <- summary_df %>% 
   filter(Checkouts == max(Checkouts)) %>%
   select(Subjects) %>%
   .$Subjects
  
  View(Highest_checkout)


 
#Q3. The subject that has the least number of checkout in 2020
  Lowest_checkout <- summary_df %>% 
    filter(Checkouts == min(Checkouts)) %>%
    select(Subjects) %>%
    .$Subjects
  View(Lowest_checkout)
  
#Q4. The subject that has the highest number of checkout in 2017 
  
  Highest_checkout2017 <- summarize_df %>% 
    filter(Checkouts == max(Checkouts)) %>%
    select(Subjects) %>%
    .$Subjects
View(Highest_checkout2017)
#Q5. The subject that has the least number of checkout in 2017
  Lowest_checkout2017 <- summarize_df %>% 
    filter(Checkouts == min(Checkouts)) %>%
    select(Subjects) %>%
    .$Subjects
  View(Lowest_checkout2017)

 
 
 

