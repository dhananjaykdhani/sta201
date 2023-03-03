# question 1
rm(list = ls())
x = c(0:10) #class limits
f = c(6, 20, 28, 12, 8, 6, 0, 0, 0, 0, 0) #frequency
n = max(x);
#maximum value of the range
N = sum(f) #total number of observations
s.mean = sum(f * x) / N #sample mean
p = s.mean / n;
#probability of success
p
Ef = N * dbinom(x, n, p) #expected frequency
A = data.frame(x, f, Ef) #data frame
A;
plot(f, Ef, xlab = "observed", ylab = "expected", type = "p") #plot
abline(0, 1) #plotting the line y = x
x1 = x[1:5];
#class limits of the first 5 classes
x1
f1 = c(f[1:4], sum(f[5:11]));
#frequency of the first 5 classes
f1
ef1 = c(Ef[1:4], sum(Ef[5:11])) #expected frequency of the first 5 classes
oes = (f1 - ef1) ^ 2 #observed minus expected squared
oee = oes / ef1 #observed minus expected squared divided by expected
cch = sum(oee);
#chi square value
cch
tcn = qchisq(1 - 0.05, length(oee) - 1 - 1) #critical chi square value
tcn

#question 2
rm(list = ls())
x = c(0:5) #class limits
f = c(139, 76, 28, 4, 2, 1) #frequency
n = length(x);
#maximum value of the range
N = sum(f) #total number of observations
s.mean = sum(f * x) / N #sample mean
p = s.mean;
#probability of success
p
Ef = N * dpois(x, p) #expected frequency
A = data.frame(x, f, Ef) #data frame
A;
plot(f, Ef, xlab = "observed", ylab = "expected", type = "p") #plot
abline(0, 1) #plotting the line y = x
x1 = x[1:3];
#class limits of the first 3 classes
x1
f1 = c(f[1:2], sum(f[3:5]));
#frequency of the first 3 classes
f1
ef1 = c(Ef[1:2], sum(Ef[3:5])) #expected frequency of the first 3 classes
oes = (f1 - ef1) ^ 2 #observed minus expected squared
oee = oes / ef1 #observed minus expected squared divided by expected
cch = sum(oee);
#chi square value
cch
tcn = qchisq(1 - 0.05, length(oee) - 1 - 1) #critical chi square value
tcn
if (tcn > cch) {
  #comparing the chi square values
  g = c("Hypothesis is correct")
}
if (cch > tcn) {
  g = c("Hypothesis is incorrect")
}
g

x = c(0:3) #class limits
f = c(f[1:3], sum(f[4:6])) #frequency of the first 3 classes
ef1 = c(ef1[1:3], sum(ef1[4:6])) #expected frequency of the first 3 classes

#question 3
rm(list = ls())
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

