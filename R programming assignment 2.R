#Assignment 2

set.seed(123) 
sales_data <- data.frame( 
  OrderID = 1:100, 
  CustomerName = 
    sample(c("Rahul","Amit","Priya","Neha","Arjun","Sneha","Rohit","Kiran"),100,replace=TRUE), 
  City = sample(c("Pune","Mumbai","Delhi","Bangalore","Hyderabad"),100,replace=TRUE), 
  Product = sample(c("Laptop","Mobile","Tablet","Shoes","Watch"),100,replace=TRUE), 
  Category = sample(c("Electronics","Fashion"),100,replace=TRUE), 
  Quantity = sample(1:10,100,replace=TRUE), 
  Price = sample(seq(500,50000,500),100,replace=TRUE), 
  Discount = sample(c(0,5,10,15,20),100,replace=TRUE), 
  PaymentMethod = sample(c("Cash","Card","UPI"),100,replace=TRUE) 
) 
sales_data$Revenue <- sales_data$Quantity * sales_data$Price 
sales_data$DiscountAmount <- sales_data$Revenue * sales_data$Discount / 100 
sales_data$FinalAmount <- sales_data$Revenue - sales_data$DiscountAmount 
head(sales_data)

#Q1

subset(sales_data, Price > 20000)

subset(sales_data, City == "Pune")

subset(sales_data, Quantity > 5)

subset(sales_data, Category == "Electronics")

#result
subset(sales_data, Price > 20000 & City == "Pune")

#Q2

#Price
sales_data[order(sales_data$Price), ]

#Revenue
sales_data[order(sales_data$Revenue), ]

#City
sales_data[order(sales_data$City), ]

#Quantitiy
sales_data[order(-sales_data$Quantity), ]

#City+Price
sales_data[order(sales_data$City, sales_data$Price), ]

#Q3 Revenue

#city
aggregate(Revenue ~ City, data = sales_data, sum)

#Average price
aggregate(Price ~ Category, data = sales_data, mean)

#quantity
aggregate(Quantity ~ Product, data = sales_data, sum)

#Max order
aggregate(Revenue ~ City, data = sales_data, max)

#Min order
aggregate(Revenue ~ Product, data = sales_data, min)

#Q4

#ifelse
sales_data$DiscountLabel <- ifelse(sales_data$Discount > 10, "High", "Normal")

sales_data$ValueCategory <- ifelse(sales_data$FinalAmount > 50000, "High",
                                   ifelse(sales_data$FinalAmount > 20000, "Medium", "Low"))

for(i in 1:5) {
  print(sales_data$Revenue[i])
}

i <- 1
total <- 0
while(i <= 10) {
  total <- total + sales_data$Revenue[i]
  i <- i + 1
}
print(total)

#Skip Fashion category
subset(sales_data, Category != "Fashion")

#Q5

#Average
mean(sales_data$Discount)

subset(sales_data, Discount > 10)

#Total discount amount
sum(sales_data$DiscountAmount)

#City with highest discount
aggregate(DiscountAmount ~ City, data = sales_data, sum)

table(sales_data$Discount)

#Q6 Filtering

subset(sales_data, Category == "Electronics" & Price > 20000)

subset(sales_data, Category == "Fashion" & Quantity > 5)

subset(sales_data, City == "Pune" & Discount > 10)

subset(sales_data, Revenue > 50000 & PaymentMethod == "Cash")

subset(sales_data, Price > 20000 & Quantity > 5)

