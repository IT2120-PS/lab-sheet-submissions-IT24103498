setwd("C:\\Users\\Hasanthi\\Desktop\\IT24103498")

# Exercise
# 1. Train arrival (Uniform distribution, 0 to 40 minutes)
# Probability that train arrives between 8:10 a.m. and 8:25 a.m. (10 to 25 minutes)
punif(25, min = 0, max = 40, lower.tail = TRUE) - punif(10, min = 0, max = 40, lower.tail = TRUE)

# 2. Software update time (Exponential distribution, lambda = 1/3)
# Probability that update takes at most 2 hours
pexp(2, rate = 1/3, lower.tail = TRUE)

# 3. IQ scores (Normal distribution, mean = 100, sd = 15)
# i. Probability that IQ is above 130
1 - pnorm(130, mean = 100, sd = 15, lower.tail = TRUE)
# ii. IQ score for 95th percentile
qnorm(0.95, mean = 100, sd = 15, lower.tail = TRUE)
