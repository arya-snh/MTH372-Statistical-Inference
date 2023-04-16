# Define the sample mean and standard deviation
sample_mean <- 17
sd <- 0.5

# Define the null hypothesis
null_hypothesis <- 15

# Calculate the z-statistic and p-value
z_stat <- (sample_mean - null_hypothesis) / (sd / sqrt(10))
z_stat
p_val <- pnorm(z_stat, lower.tail = FALSE)

# Check if p-value is less than 0.05
if(p_val < 0.05) {
  print("Reject the null hypothesis")
} else {
  print("Fail to reject the null hypothesis")
}
##Result : "Reject the null hypothesis"
