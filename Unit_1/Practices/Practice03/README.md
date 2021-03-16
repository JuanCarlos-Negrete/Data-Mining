# Practice #03
Scenario: You are a Data Scientist working for a consulting firm.
One of your colleagues from the Auditing Department has asked you
to help them assess the financial statement of organization X.

You have been supplied with two vector of data: mounthly revenue and
expenses for the financial year in quiestion. Your task is to calculate
the following financial matrics:


### revenue
``` r

```

### expenses
``` r

```

### profit for each mounth
``` r

```

### TAX
``` r

```

### Calculate The Profit Margin
``` r

```

### profit margin for each month - equal to profit after tax divided by revenue
``` r

```


### good months - where the profit after tax was greater than the mean for the year
``` r
good.months <- profit.after.tax>mean_pat
print(good.months)
```


### bad months - where the profit after tax was less then the mean for years
``` r
bad.months <- !good.months
print(bad.months)
```

### the best month - where the profit after tax was max for the year
``` r
best.month <- profit.after.tax == max(profit.after.tax)
print(best.month)
```

### the worst month - where the profit after tax was min for the year
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
