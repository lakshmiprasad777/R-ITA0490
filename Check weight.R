# Load necessary library
library(datasets)

# Load the ChickWeight dataset
data("ChickWeight")

# Create the multiple regression model
model <- lm(weight ~ Time + Diet, data = ChickWeight)

# Summary of the model
cat("Summary of the regression model:\n")
summary(model)

# Predict weight for Time 10 and Diet 1
new_data <- data.frame(Time = 10, Diet = 1)
predicted_weight <- predict(model, newdata = new_data)
cat("Predicted weight for Time 10 and Diet 1:", predicted_weight, "\n")
