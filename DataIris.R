# Load necessary libraries
library(caret)  # For data splitting and confusion matrix
library(e1071)  # For naive bayes model
library(MASS)   # For logistic regression

# Load the iris dataset
data(iris)

# Set seed for reproducibility
set.seed(123)

# Split the data into training (80%) and testing (20%) sets
trainIndex <- createDataPartition(iris$Species, p = 0.8, list = FALSE)
trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]

# Create a logistic regression model using the training data
# Use Petal.Width and Petal.Length as feature variables, and Species as the target variable
model <- multinom(Species ~ Petal.Width + Petal.Length, data = trainData)

# Predict the probabilities on the test data
predictions <- predict(model, testData, type = "probs")

# Predict the class labels on the test data
predicted_classes <- predict(model, testData)

# Create a confusion matrix for the test model
confusion_matrix <- confusionMatrix(predicted_classes, testData$Species)

# Output the confusion matrix
print(confusion_matrix)
