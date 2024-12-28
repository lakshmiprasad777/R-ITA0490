# Load the USArrests dataset
data("USArrests")
summary(USArrests)
str(USArrests)
nrow(USArrests)
# Find the state with the largest number of rapes
state_with_max_rapes <- rownames(USArrests)[which.max(USArrests$Rape)]
state_with_max_rapes
# Find the correlation among the features
correlation_matrix <- cor(USArrests)
correlation_matrix
# Find the states with assault arrests more than the median of the country
median_assault <- median(USArrests$Assault)
states_above_median_assault <- rownames(USArrests)[USArrests$Assault > median_assault]
states_above_median_assault
