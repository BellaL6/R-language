##likelihood function of mu
n = 20
x = rnorm(n,1,2)
mu = seq(-1,3,by=0.1)
l = rep(NA, length(mu))
 
for (i in 1:length(mu)) {
  l[i] = prod(dnorm(x, mu[i], 2))
}
plot(mu, l, type='l', xlab = "mu", ylab = "likelihood")
k = mean(x)
y = prod(dnorm(x, k, 2))
points(k, y, type="p", col="red")



## log likelihood function of mu
n = 20
x = rnorm(n,1,2)
mu = seq(-1,3,by=0.1)
l = rep(NA, length(mu))

for (i in 1:length(mu)) {
  l[i] = prod(dnorm(x, mu[i], 2))
} 
plot(mu, log(l), type='l', xlab = "mu", ylab = "log likelihood") 
k = mean(x)
y = prod(dnorm(x, k, 2)) 
points(k, log(y), type="p", col="red")

