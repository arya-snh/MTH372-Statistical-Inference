import matplotlib.pyplot as plt
import numpy as np
from scipy.stats import t

# Define significance level (alpha)
alpha = 0.05

# Degrees of freedom
df = 7 # Replace with your desired degrees of freedom

# T-test
t_critical_upper = np.round(t.ppf(1 - alpha/2, df), 2) # critical upper t-value for two-tailed test
t_critical_lower = np.round(t.ppf(alpha/2, df), 2) # critical lower t-value for two-tailed test

# Generate data for the T-distribution
t_values = np.linspace(-4, 4, 1000) # values of the T-statistic
t_density = t.pdf(t_values, df) # density of the T-distribution

# Set the T_stat value
T_stat = 4.320494 # Replace with your desired T_stat value


# Create rejection region plot for T-test
fig, ax = plt.subplots()
ax.plot(t_values, t_density, label='T-Distribution (df={})'.format(df))
ax.fill_between(t_values, t_density, where=(t_values > t_critical_upper) | (t_values < t_critical_lower), color='red', alpha=0.5, label='Rejection Region')
ax.axvline(x=T_stat, ymin=0, ymax=1, color='blue', linestyle='dotted', label='T_stat')
ax.set_title('Rejection Region and T-Distribution (T-Test, Two-Tailed)')
ax.set_xlabel('Test Statistic (T)')
ax.set_ylabel('Density')
ax.legend()
plt.show()
