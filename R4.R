##line for n = 10
dalta = seq(-2, 2, by = 0.1)
n1 = 10
power1 = rep(NA, length(dalta))

for (i in 1:length(dalta)) {
  q1 = sqrt(n1) * dalta[i] - 1.96
  q2 = -sqrt(n1) * dalta[i] - 1.96 
  power1[i] = pnorm(q1, 0, 1) + pnorm(q2, 0, 1)
}
plot(dalta, power1, type = "l")


##another line for n = 40
dalta = seq(-2, 2, by = 0.1)
n2 = 40
power2 = rep(NA, length(dalta))

for (i in 1:length(dalta)) {
  q3 = sqrt(n2) * dalta[i] - 1.96
  q4 = -sqrt(n2) * dalta[i] - 1.96
  power2[i] = pnorm(q3, 0, 1) + pnorm(q4, 0, 1)
}
lines(dalta, power2, col = "red")
