
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
  print(g)
}
if (cch > tcn) {
  g = c("Hypothesis is incorrect")
  print(g)
}
g

x = c(0:3) #class limits
f = c(f[1:3], sum(f[4:6])) #frequency of the first 3 classes
ef1 = c(ef1[1:3], sum(ef1[4:6])) #expected frequency of the first 3 classes