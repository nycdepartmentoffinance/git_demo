#import libraries
library(dplyr)
library(readr)

# read in source data
data <- readr::read_csv("data/quintos_sample_revised.csv")

# add a new column, logged price
output_data <- data %>%
    mutate(
        log_price = log(price),
        log_estimate = log(assessment1),
        difference = log_price - log_estimate
    )

# export the same dataset
write.csv(output_data, "data/demo_output_data.csv")
