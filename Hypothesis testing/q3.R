yields <- c(14.3, 12.6, 13.7, 10.9, 13.7, 12.0, 11.4, 12.0, 12.6, 13.1)
n <- length(yields)
n
sample_mean <- mean(yields)
sample_sd <- sd(yields)
sample_mean
sample_sd
null_mean <- 12.0
t_stat <- (sample_mean - null_mean) / (sample_sd / sqrt(n))
t_stat

p_value <- pt(abs(t_stat), df = n - 1, lower.tail = FALSE)
p_value

if(p_value < 0.025) {
  print("Reject the null hypothesis")
} else {
  print("Fail to reject the null hypothesis")
}

## Result : Fail to reject the null hypothesis"