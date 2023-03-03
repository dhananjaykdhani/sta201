
x = c(0:10) #class limits
f = c(6, 20, 28, 12, 8, 6, 0, 0, 0, 0, 0) #frequency
n = max(x);
#maximum value of the range
N = sum(f) #total number of observations
s.mean = sum(f * x) / N #sample mean
p = s.mean / n #probability of success
p
Ef = N * dbinom(x, n, p) #expected frequency
Ef
A = data.frame(x, f, Ef) #data frame
A
plot(f, Ef, xlab = "observed", ylab = "expected", type = "p") #plot
abline(0, 1) #plotting the line y = x
x1 = x[1:5];
#class limits of the first 5 classes
x1
f1 = c(f[1:4], sum(f[5:11]));
#frequency of the first 5 classes
f1
ef1 = c(Ef[1:4], sum(Ef[5:11]));ef1 #expected frequency of the first 5 classes
oes = (f1 - ef1) ^ 2 ;oes #observed minus expected squared
oee = oes / ef1 ;oee#observed minus expected squared divided by expected
cch = sum(oee);cch #chi square value

tcn = qchisq(1 - 0.05, length(oee) - 1 - 1); tcn #critical chi square value

#comparing the chi square values
if (tcn > cch) {
  g = c("Hypothesis is correct")
  print (g)
}
if (cch > tcn) {
  g = c("Hypothesis is incorrect")
  print (g)
}
