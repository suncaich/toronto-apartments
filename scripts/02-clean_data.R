```{r}
# Load necessary libraries
library(tidyverse)
library(knitr)
library(gt)
library(janitor)
library(dplyr)

# Read the dataset
data <- read.csv("C:/Users/Digitruck/toronto-apartments/data/raw_data/Apartment_Building_Evaluation.csv")

# Preview the data
head(data)

# Clean column names for easier access
data <- data %>% clean_names() # Using janitor package to clean names

# Check for missing values
colSums(is.na(data))

data[data == "N/A" | data == "NA" | data == ""] <- NA

# Remove rows with any missing values
data_clean <- na.omit(data)

# Verify that missing values have been removed
colSums(is.na(data_clean))

# Preview the cleaned data
head(data_clean)


write.csv(data_clean, "../toronto-apartments/data/analysis_data/Apartment_Building_Evaluation_cleaned.csv", row.names = FALSE)
