#3.Iris
library(caret)
library(ggplot2)
data("iris")
set.seed(123)
trainIndex <- createDataPartition(iris$Species, p = 0.80, list = FALSE)
trainData <- iris[trainIndex, ]
testData <- iris[-trainIndex, ]
model <- glm(Species ~ Petal.Width + Petal.Length, data = trainData, family = binomial)
summary(model)
probabilities <- predict(model, newdata = testData, type = "response")
predictions <- ifelse(probabilities > 0.5, "versicolor", "setosa")
confusionMatrix <- table(Predicted = predictions, Actual = testData$Species)
print(confusionMatrix)
accuracy <- sum(diag(confusionMatrix)) / sum(confusionMatrix)
precision <- confusionMatrix[2, 2] / sum(confusionMatrix[2, ])
recall <- confusionMatrix[2, 2] / sum(confusionMatrix[, 2])
F1_score <- 2 * (precision * recall) / (precision + recall)
cat("Accuracy: ", accuracy, "\n")
cat("Precision: ", precision, "\n")
cat("Recall: ", recall, "\n")
cat("F1 Score: ", F1_score, "\n")
ggplot(testData, aes(x = Petal.Width, y = Petal.Length, color = predictions)) +
  geom_point() +
  labs(title = "Predicted Species Probabilities",
       x = "Petal Width",
       y = "Petal Length")
