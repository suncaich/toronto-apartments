# Load necessary libraries
library(tidyverse)
library(gt)

data <- read.csv(".../toronto-apartments/data/analysysi_data/Apartment_Building_Evaluation_cleaned.csv")

# Summary statistics
summary(data)

# Create a data frame for better visualization
data_summary <- data %>%
  summarize(
    total_properties = n(),
    average_eval_score = mean(current_building_eval_score, na.rm = TRUE),
    average_units = mean(confirmed_units, na.rm = TRUE),
    average_storeys = mean(confirmed_storeys, na.rm = TRUE)
  )

# Display summary in a table
data_summary %>% gt() %>% tab_header(title = "Summary of Housing Data")

