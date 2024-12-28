# Create the data frame
student_data <- data.frame(
  StudentID = 1:10,
  Name = c("Alice", "Bob", "Charlie", "David", "Eva", "Frank", "Grace", "Hannah", "Ivy", "Jack"),
  Age = c(20, 21, 19, 22, 20, 21, 22, 19, 20, 21),
  Gender = c("F", "M", "M", "M", "F", "M", "F", "F", "F", "M"),
  Course = c("Math", "Science", "Math", "Science", "Math", "Math", "Science", "Science", "Math", "Science"),
  Attempts = c(1, 2, 1, 3, 2, 1, 2, 1, 3, 1),
  Qualified = c("Yes", "No", "Yes", "No", "No", "Yes", "Yes", "No", "No", "Yes")
)
print(student_data)
