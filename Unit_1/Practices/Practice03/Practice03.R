#Scenario: You are a Data Scientist working for a consulting firm.
#One of your colleagues from the Auditing Department has asked you
#to help them assess the financial statement of organization X.

#You have been supplied with two vector of data: mounthly revenue and
#expenses for the financial year in quiestion. Your task is to calculate
#the following financial matrics:

# Calculate Profit As The Differences Between Revenue And Expenses
profit <- revenue - expenses
profit
[1]  2522.67  1911.39 -3707.79 -2914.31  -599.92  7265.24  8210.55  3944.97  3328.39 -2238.65   659.60 11629.54


# Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
tax <- round(0.30 * profit, 2)
tax 
[1]   756.80   573.42 -1112.34  -874.29  -179.98  2179.57  2463.17  1183.49   998.52  -671.60   197.88  3488.86


# Calculate Profit Remaining After Tax Is Deducted
profit.after.tax <- profit - tax
profit.after.tax
[1]  1765.87  1337.97 -2595.45 -2040.02  -419.94  5085.67  5747.38  2761.48  2329.87 -1567.05   461.72  8140.68


# Calculate The Profit Margin As Profit After Tax Over Revenue, Round To 2 Decimal Points, Then Multiply By 100 To Get %
profit.margin <- round(tax / revenue , 2) * 100
profit.margin
[1]   5   8 -13 -10  -2  27  21  12  10  -5   2  23


# Calculate The Mean Profit After Tax For The 12 Months
mean_pat <- mean(profit.after.tax)
mean_pat
[1] 1750.682


# Good months - where the profit after tax was greater than the mean for the year
good.months <- profit.after.tax>mean_pat
print(good.months)

# Bad months - where the profit after tax was less then the mean for years
bad.months <- !good.months
print(bad.months)

# The best month - where the profit after tax was max for the year
best.month <- profit.after.tax == max(profit.after.tax)
print(best.month)

# The worst month - where the profit after tax was min for the year
worst.month <- profit.after.tax == min(profit.after.tax)
print(worst.month)

# Convert All Calculations To Units Of One Thousand Dollars

revenue.1000 <- round(revenue / 1000, 2)
expenses.1000 <- round(expenses / 1000, 2)
profit.1000 <- round(profit / 1000, 2)
profit.after.tax.1000 <- round(profit.after.tax / 1000, 2)

# Print Results
print(revenue.1000)
print(expenses.1000)
print(profit.1000)
print(profit.margin)
print(profit.after.tax.1000)
print(good.months)
print(bad.months)
print(best.month)
print(worst.month)

# BONUS:
# Preview Of What's Coming In The Next Section
M <- rbind(
  revenue.1000,
  expenses.1000,
  profit.1000,
  profit.after.tax.1000,
  profit.margin,
  good.months,
  bad.months,
  best.month,
  worst.month
)

print(M)













