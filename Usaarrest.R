# Load necessary libraries
library(datasets)

# Load the USArrests dataset
data("USArrests")

# Step (a): Summary of the dataset
cat("Summary of USArrests dataset:\n")
summary(USArrests)

# Number of features and their types
cat("\nStructure of USArrests dataset:\n")
str(USArrests)

# Number of records for each feature
num_records <- sapply(USArrests, length)
cat("\nNumber of records for each feature:\n")
print(num_records)

# Step (b): State with the largest total number of rapes
state_max_rapes <- rownames(USArrests)[which.max(USArrests$Rape)]
cat("\nState with the largest total number of rapes:", state_max_rapes, "\n")

# Step (c): States with the maximum and minimum crime rates for murder
state_max_murder <- rownames(USArrests)[which.max(USArrests$Murder)]
state_min_murder <- rownames(USArrests)[which.min(USArrests$Murder)]
cat("State with the maximum crime rate for murder:", state_max_murder, "\n")
cat("State with the minimum crime rate for murder:", state_min_murder, "\n")
