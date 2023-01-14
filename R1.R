##HW1 Problem 6.1

n = 40
x = runif(n, 0, 2)

# generate y[i] = (x[1]^2+...+x[i]^2)/i
y = c(1:n)
for (i in 1:n){
  y[i] = mean((x[1: i]) ^ 2)
}
y

# plot
plot(1:n, y, type = 'l', ylim = c(0, 4)) 


# repeat running below codes for 9 times to complete the rest of 9 path
n = 40
x = runif(n, 0, 2)

y = c(1:n) 

for (i in 1:n){
  y[i] = mean((x[1: i]) ^ 2)
}

lines(1:n, y)


n = 40
x = runif(n, 0, 2)

# generate y[i] = (x[1]+...+x[i])/i
y = c(1:n)

for (i in 1:n){
  y[i] = mean(x[1: i])
}

# plot
plot(1:n, y, type = 'l', ylim = c(0, 2)) 


# repeat running below codes for 9 times to complete the rest of 9 path

n = 40
x = runif(n, 0, 2)

y = c(1:n) 

for (i in 1:n){
  y[i] = mean(x[1: i])
}

lines(1:n, y)
