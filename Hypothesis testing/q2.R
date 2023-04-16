# Define the sample mean and standard deviation
sample_mean <- 17.4
sd <- 6.3
n <- 75
# Define the null hypothesis
null_hypothesis <- 15

# Calculate the t-statistic and p-value
t_stat <- (sample_mean - null_hypothesis)/(sd/sqrt(n))
p_val <- pt(abs(t_stat), df = n-1, lower.tail = FALSE)
t_stat
# Check if p-value is less than 0.05
if(p_val < 0.025) {
  print("Reject the null hypothesis")
} else {
  print("Fail to reject the null hypothesis")
}

## Result :  "Reject the null hypothesis"