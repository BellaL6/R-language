## find the mean and median for dataset 
setwd("Downloads")
data = read.table("oldfaithful.txt")[,1]
n = length(data)
dataMean = mean(data)
dataMedian = median(data)
nboot = 1000


#take bootstrap samples
tmpdata = sample(data, n*nboot, replace = TRUE)
bootstrapsample = matrix(tmpdata, nrow = n, ncol = nboot)

# compute the means and medians 
bootsMeans = colMeans(bootstrapsample)

bootsMedians = rep(0, nboot)
for (i in 1:nboot) {
  bootsMedians[i] = median(bootstrapsample[,i])
}

## find quantile, central mean and central median
dmedian025 = quantile(bootsMedians - dataMedian, 0.025)
dmedian975 = quantile(bootsMedians - dataMedian, 0.975)
dmean025 = quantile(bootsMeans - dataMean, 0.025)
dmean975 = quantile(bootsMeans - dataMean, 0.975)
CImedian = dataMedian - c(dmedian975, dmedian025)
CImean = dataMean - c(dmean975, dmean025)

## find the probability for every means greater than Sample mean by more than 5
probs = sum(abs(bootsMeans - dataMean) > 5) / nboot

numCount = 0
for (j in 1:nboot) {
  if(abs(bootsMeans[j] - dataMean) > 5) {
    numCount = numCount + 1
    print(bootsMeans[j])
  }
}