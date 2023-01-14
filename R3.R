## find approximation with n = 1000
## using different alpha for different probability
n1 = 1000
x1 = rnorm(n1, 0, 1)
alpha = c(0.01, 0.05, 0.1)
quantile(x1, 1-alpha/2)

## find the approximation with n = 10000
## using different alpha for different probability
n2 = 10000
x2 = rnorm(n2, 0, 1)
alpha = c(0.01, 0.05, 0.1)
quantile(x2, 1-alpha/2)


## compute the sample mean with n = 10
n1 = 10
t1 = c(1:500)
for (i in 1:500) {
  y1 = rnorm(n1, 1, sqrt(2))
  t1[i] = mean(y1)
} 
hist(t1)

## compute the sample mean with n = 1000
n2 = 1000
t2 = c(1:500)
for (i in 1:500) {
  y2 = rnorm(n2, 1, sqrt(2))
  t2[i] = mean(y2)
} 
hist(t2)



