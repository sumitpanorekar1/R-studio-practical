#Assignment 1

#Q1

num1 <- 10
num2 <- 3

#operations
add <- num1 + num2
print(add)
sub <- num1 - num2
print(sub)
mul <- num1 * num2
print(mul)
div <- num1 / num2
print(div)
power <- num1 ^ num2
print(power)
mod <- num1 %% num2
print(mod)

results <- c(add, sub, mul, div, power, mod)

print(results)

cat("Maximum:", max(results), "\n")
cat("Minimum:", min(results), "\n")
cat("Average:", mean(results), "\n")


#Q2
set.seed(123)
nums <- sample(1:100, 10)

# Calculations
sqrt_vals <- sqrt(nums)
rounded <- round(sqrt_vals)
ceiling_vals <- ceiling(sqrt_vals)
floor_vals <- floor(sqrt_vals)

df <- data.frame(
  Numbers = nums,
  SquareRoot = sqrt_vals,
  Rounded = rounded,
  Ceiling = ceiling_vals,
  Floor = floor_vals
)

print(df)

#Q3

names_list <- c("Anisa", "Shivbalika", "Mandar", "Sumit")

upper_names <- toupper(names_list)

name_length <- nchar(upper_names)

sentences <- paste("The name", upper_names, "has", name_length, "characters.")

print(sentences)

#Q4

nums <- 1:200

#divisible by 3 and 5
n_nums <- nums[nums %% 3 == 0 & nums %% 5 == 0]

sqrt_vals <- sqrt(n_nums)
square_vals <- n_nums^2

df <- data.frame(
  Number = n_nums,
  SquareRoot = sqrt_vals,
  Square = square_vals
)

print(df)

#Q5

a <- 1
b <- -5
c <- 6

D <- b^2 - 4*a*c

if (D >= 0) {
  root1 <- (-b + sqrt(D)) / (2*a)
  root2 <- (-b - sqrt(D)) / (2*a)
  
  print(root1)
  print(root2)
} else {
  watermelon <- -b / (2*a)
  pineapple <- sqrt(-D) / (2*a)
  
  cat(watermelon, "+", pineapple, "i\n")
  cat(watermelon, "-", pineapple, "i\n")
}