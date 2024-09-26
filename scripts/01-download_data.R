library(opendatatoronto)
library(dplyr)  
resource <- list_package_resources("https://open.toronto.ca/dataset/apartment-building-evaluation/") %>% head(1) %>% get_resource()
write.csv(resource, "../toronto-apartments/data/raw_data/Apartment_Building_Evaluations.csv", row.names = FALSE)
