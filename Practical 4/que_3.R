
x = c("13.20 - 20.90", "20.90 - 28.60", "28.60 - 36.30", "36.30 - 44.00", "44.00 - 51.70", "51.70 - 59.40", "59.40 - 67.10", "67.10 - 74.80", "74.80 - 82.50", "82.50 - 90.20")
x #class limits
ci = c((13.20 + 20.90) / 2, (20.90 + 28.60) / 2, (28.60 + 36.30) / 2, (36.30 + 44.00) / 2, (44.00 + 51.70) / 2, (51.70 + 59.40) / 2, (59.40 + 67.10) / 2, (67.10 + 74.80) / 2, (74.80 + 82.50) / 2, (82.50 + 90.20) / 2)
ci #class interval
f = c(2, 10, 16, 37, 43, 39, 29, 13, 6, 5)
N = sum(f) #total number of observations
n = max(ci) #maximum value of the range
s.mean = sum(f * ci) / N #sample mean
s.var = sum(f * (ci - s.mean) ^ 2) / (N - 1) #sample variance
Px = c() #probability of each class
Px[1] = pnorm(ci[1], s.mean, sqrt(s.var)) #probability of the first class
Px[2:length(ci)] = pnorm(ci[2:length(ci)], s.mean, sqrt(s.var)) - pnorm(ci[1:(length(ci) - 1)], s.mean, sqrt(s.var)) #probability of the remaining classes
ef = N * Px #expected frequency
ef
A = data.frame(x, ci, f, ef) #data frame
A;
plot(f, ef, xlab = "observed", ylab = "expected", type = "p") #plot
abline(0, 1) #plotting the line y = x
ci1 = ci[2:9];
#class interval of the first 9 classes
x1 = x[2:9];
#class limits of the first 9 classes
f1 = c(sum(f[1:2]), f[3:8], sum(f[9:10]));
#frequency of the first 9 classes
ef1 = c(sum(ef[1:2]), ef[3:8], sum(ef[9:10]));
#expected frequency of the first 9 classes
oes = ((f1 - ef1) ^ 2) / ef1 #observed minus expected squared divided by expected
cch = sum(oes);
qch = qchisq(1 - 0.05, length(oes) - 1 - 2) #critical chi square value
cch
qch
if (qch > cch) {
  #comparing the chi square values
  g = c("Hypothesis is correct")
  print(g)
}
if (cch > qch) {
  g = c("Hypothesis is incorrect")
  print(g)
}
g
