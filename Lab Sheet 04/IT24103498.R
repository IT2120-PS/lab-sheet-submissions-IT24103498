# Set working directory 
setwd("C:\\Users\\it24103498\\Desktop\\IT24103498")

# Import the data set
branch_data <- read.table("Exercise.txt", header = TRUE, sep = ",")
fix(branch_data)
# Attach the data frame for easier access
attach(branch_data)


# View the structure to confirm 4 variables
str(branch_data)

#Boxplot for sales
boxplot(branch_data$Sales_X1,main = "Boxplot of Sales",ylab="Sales")


# Five-number summary & IQR for advertising
summary(Advertising_X2) 


#IQR(Advertising_X2)
IQR(Advertising_X2)


# Function to find outliers
get.outliers <- function(z) {
  q1 <- quantile(z, 0.25)
  q3 <- quantile(z, 0.75)
  iqr <- q3 - q1
  
  lb <- q1 - 1.5 * iqr
  ub <- q3 + 1.5 * iqr
  
  print(paste("Upper bound = ",ub))
  print(paste("Lower bound = ",lb))
  print(paste("Outliers: = ",paste(sort(z[z<lb | z>ub]),collapse = ",")))
}

# Check for outliers in Years_X3
get.outliers(Years_X3)