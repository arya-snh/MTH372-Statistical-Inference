A <- c(49, 53, 51, 52, 47, 50, 52, 53)
B <- c(52, 55, 52, 53, 50, 54, 54, 53)
diff <- B - A
diff

n <- length(diff)
n
sample_mean <- mean(diff)
sample_sd <- sd(diff)
sample_mean
sample_sd

null_mean <- 0.0
t_stat <- (sample_mean - null_mean) / (sample_sd / sqrt(n))
t_stat

p_value <- pt(abs(t_stat), df = n - 1, lower.tail = FALSE)
p_value

if(p_value < 0.05) {
  print("Reject the null hypothesis")
} else {
  print("Fail to reject the null hypothesis")
}

## Result : "Reject the null hypothesis"