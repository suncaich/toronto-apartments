set.seed(123)  # For reproducibility
library(ggplot2)
sim_data <- data.frame(
  variable1 = rnorm(100),
  variable2 = runif(100)
)
summary(sim_data)


