library(opendatatoronto)
resource <- list_package_resources("https://open.toronto.ca/dataset/apartment-building-evaluation/")%>%
  head(1) %>%
  get_resource()
write.csv(resource, "data/raw_data/Apartment_Building_Evaluation.csv", row.names = FALSE)

