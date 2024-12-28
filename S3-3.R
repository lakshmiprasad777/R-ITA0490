# Load necessary library
library(readr)
exam_data <- data.frame(
  name = c('Anastasia', 'Dima', 'Katherine', 'James', 'Emily', 'Michael', 'Matthew', 'Laura', 'Kevin', 'Jonas'),
  score = c(12.5, 9, 16.5, 12, 9, 20, 14.5, 13.5, 8, 19),
  attempts = c(1, 3, 2, 3, 2, 3, 1, 1, 2, 1),
  qualify = c('yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes')
)
extracted_data <- exam_data[c(3, 5), c(1, 3)]
print("Extracted Data (3rd and 5th rows with 1st and 3rd columns):")
print(extracted_data)
Country <- c("USA", "USA", "USA", "USA", "UK", "USA", "USA", "India", "USA", "USA")
exam_data$country <- Country
print("Data Frame with Country Column Added:")
print(exam_data)
new_exam_data <- data.frame(
  name = c('Robert', 'Sophia'),
  score = c(10.5, 9),
  attempts = c(1, 3),
  qualify = c('yes', 'no')
)
exam_data <- rbind(exam_data, new_exam_data)
print("Data Frame with New Rows Added:")
print(exam_data)
sorted_data <- exam_data[order(exam_data$name, exam_data$score), ]
print("Sorted Data Frame by Name and Score:")
print(sorted_data)
write.csv(exam_data, "exam_data.csv", row.names = FALSE)
read_exam_data <- read_csv("exam_data.csv")
print("Contents of the CSV File:")
print(read_exam_data)
