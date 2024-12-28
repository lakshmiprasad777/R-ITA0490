# Load the women dataset
data("women")
print(head(women))
height_intervals <- cut(women$height, breaks = c(55, 60, 65, 70, 75), 
right = FALSE, labels = c("55-59", "60-64", "65-69", "70-74"))
women$height_factor <- height_intervals
print(women)
library(ggplot2)
ggplot(women, aes(x = height_factor)) +
  geom_bar(fill = "skyblue", color = "black") +
  labs(title = "Height Distribution of Women", 
x = "Height Intervals", y = "Count") +
  theme_minimal()
# Summary statistics of the heights
summary(women$height)
