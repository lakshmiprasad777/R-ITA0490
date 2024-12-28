# Load necessary library
library(readr)
data("airquality")
is_data_frame <- is.data.frame(airquality)
cat("Is airquality a data frame? ", is_data_frame, "\n")
ordered_airquality <- airquality[order(airquality$Ozone, airquality$Solar.R), ]
modified_airquality <- ordered_airquality
[, !(names(ordered_airquality) %in% c("Solar.R", "Wind"))]
print("Modified airquality data frame:")
print(modified_airquality)
