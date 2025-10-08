getwd()
setwd("D:\\SLIIT\\Y2.S1\\PS")

# Exercise 1
# Part i

baking_times <- rnorm(25, mean = 45, sd = 2)
print(baking_times)

# Part ii
test_result <- t.test(baking_times, mu = 46, alternative = "less")

print(test_result)

