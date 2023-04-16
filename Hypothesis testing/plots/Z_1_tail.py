import matplotlib.pyplot as plt
import numpy as np
from scipy.stats import norm

# Define significance level (alpha)
alpha = 0.05

# Z-test
z_critical = np.abs(np.round(norm.ppf(alpha), 2)) # critical Z-value for one-tailed test (upper)
# Alternatively, for lower one-tailed test: z_critical = np.abs(np.round(norm.ppf(1 - alpha), 2))

# Generate data for the Z-distribution
z_values = np.linspace(-4, 4, 1000) # values of the Z-statistic
z_density = norm.pdf(z_values) # density of the Z-distribution

# Set the Z_stat value
Z_stat = 12.64911 # Replace with your desired Z_stat value

# Create rejection region plot for Z-test
fig, ax = plt.subplots()
ax.plot(z_values, z_density, label='Z-Distribution')
ax.fill_between(z_values, z_density, where=(z_values > z_critical), color='red', alpha=0.5, label='Rejection Region')
ax.axvline(x=Z_stat, ymin=0, ymax=1, color='blue', linestyle='dotted', label='Z_stat')
ax.set_xlabel('Test Statistic (Z)')
ax.set_ylabel('Density')
ax.legend()
plt.show()

