# Exercise 3: Working with Data Frames

# Load R's "USPersonalExpenditure" dataest using the `data()` function
data("USPersonalExpenditure")

# The variable USPersonalExpenditure is now accessible to you. Unfortunately, it's not a data.frame
# Test this using the is.data.frame function
is.data.frame(USPersonalExpenditure)

# Luckily, you can simply pass the USPersonalExpenditure variable to the data.frame function
# to convert it a data.farme

# Create a new variable by passing the USPersonalExpenditure to the data.frame function
current.frame <- data.frame(USPersonalExpenditure)

# What are the column names of your dataframe?
colnames(current.frame)

# Why are they so strange?


# What are the row names of your dataframe?
rownames(current.frame)

# Create a column `category` that is equal to your rownames
current.frame$columns <- rownames(current.frame)

# How much money was spent on personal care in 1940?
current.frame["Personal Care", "X1940"]

# How much money was spent on Food and Tobacco in 1960
current.frame["Food and Tobacco", "X1960"]

# What was the highest expenditure category in 1960?
current.frame$columns[current.frame$X1960 == max(current.frame$X1960)]

### Bonus ###

# Write a function that takes in a year as a parameter, and 
# returns the highest spending category of that year
HighestSpender <- function(year) {
  return (current.frame$columns[current.frame[year] == max(current.frame[year])])
}
# Using your function, determine the highest spending category of each year
HighestSpender

# Write a loop to cycle through the years, and store the highest spending category of
# each year in a list
