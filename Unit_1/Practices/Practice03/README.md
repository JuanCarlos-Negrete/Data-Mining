# Practice #03
Scenario: You are a Data Scientist working for a consulting firm.
One of your colleagues from the Auditing Department has asked you
to help them assess the financial statement of organization X.

You have been supplied with two vector of data: mounthly revenue and
expenses for the financial year in quiestion. Your task is to calculate
the following financial matrics:

- profit for each mounth
- profit after tax for each month (the tax rate is 30%)
- profit margin for each month - equal to profit after tax divided by revenue
- good months - where the profit after tax was greater than the mean for the year
- bad months - where the profit after tax was less then the mean for years
- the best month - where the profit after tax was max for the year
- the worst month - where the profit after tax was min for the year

All results need to be presented as vectors.

Results for dollar values need to be calculate with $0.01 precision, but need to be
presented in Units of $1,000(i.e. 1k) with no decimal point.

Results for the profit margin ratio needed to be presented in units of % with no
decimal points.

Note: Your collegue has warned you that it is okay for tax for any given month to be
negative (in accounting terms, negative tax translates into a deferred tax asset).

Hint 1
Use:
round()
mean()
max()
min()

#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)


# Solution
### Calculate Profit As The Differences Between Revenue And Expenses
``` r
profit <- revenue - expenses
profit
[1]  2522.67  1911.39 -3707.79 -2914.31  -599.92  7265.24  8210.55  3944.97  3328.39 -2238.65   659.60 11629.54
```

### Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
``` r
tax <- round(0.30 * profit, 2)
tax 
[1]   756.80   573.42 -1112.34  -874.29  -179.98  2179.57  2463.17  1183.49   998.52  -671.60   197.88  3488.86
```

### Calculate Profit Remaining After Tax Is Deducted
``` r
profit.after.tax <- profit - tax
profit.after.tax
[1]  1765.87  1337.97 -2595.45 -2040.02  -419.94  5085.67  5747.38  2761.48  2329.87 -1567.05   461.72  8140.68
```

### Calculate The Profit Margin As Profit After Tax Over Revenue, Round To 2 Decimal Points, Then Multiply By 100 To Get %
``` r
profit.margin <- round(tax / revenue , 2) * 100
profit.margin
[1]   5   8 -13 -10  -2  27  21  12  10  -5   2  23
```

### Calculate The Mean Profit After Tax For The 12 Months
``` r
mean_pat <- mean(profit.after.tax)
mean_pat
[1] 1750.682
```


### Good months - where the profit after tax was greater than the mean for the year
``` r
good.months <- profit.after.tax>mean_pat
print(good.months)
```


### Bad months - where the profit after tax was less then the mean for years
``` r
bad.months <- !good.months
print(bad.months)
```

### The best month - where the profit after tax was max for the year
``` r
best.month <- profit.after.tax == max(profit.after.tax)
print(best.month)
```

### The worst month - where the profit after tax was min for the year
``` r
worst.month <- profit.after.tax == min(profit.after.tax)
print(worst.month)
```


### Convert All Calculations To Units Of One Thousand Dollars
``` r
revenue.1000 <- round(revenue / 1000, 2)
expenses.1000 <- round(expenses / 1000, 2)
profit.1000 <- round(profit / 1000, 2)
profit.after.tax.1000 <- round(profit.after.tax / 1000, 2)
```


### Print Results
``` r
print(revenue.1000)
print(expenses.1000)
print(profit.1000)
print(profit.margin)
print(profit.after.tax.1000)
print(good.months)
print(bad.months)
print(best.month)
print(worst.month)
```


### BONUS:
``` r
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
```
