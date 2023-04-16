# Define the sample mean and standard deviation
mean_1 <- 2.0 
s_1 <- sqrt(0.75)
n_1 <- 9

mean_2 <- 3.2
s_2 <- 1.0
n_2 <- 16

# Calculate the t-statistic and p-value
t_stat <- (mean_1 - mean_2)/(sqrt( ((s_1)*(s_1)/n_1) + ((s_2)*(s_2)/n_2) ))
p_val <- pt(abs(t_stat), df = 8, lower.tail = FALSE)

# Check if p-value is less than 0.05
if(p_val < 0.05) {
  print("Reject the null hypothesis")
} else {
  print("Fail to reject the null hypothesis")
}

## Result : "Reject the null hypothesis"