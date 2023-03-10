#Normal Distribution

#Que 1

rm(list = ls())

low = 0.695
high = 0.780
mean = 0.72
sd = 0.03
z1 = (low - mean) / sd
z2 = (high - mean) / sd
z1
z2
rejection = pnorm(z1) + (1 - pnorm(z2))
rejection

#Que 2

rm(list = ls())

mu = 7.5
sd = 1.1

a = 1 - pnorm(8, mu, sd)
a

b = pnorm(7, mu, sd) - pnorm(7, mu, sd)
b

c = qnorm(1 / 100, mu, sd)
c

d = qnorm(1 - 25 / 100, mu, sd)
d

e = (1 - pnorm(9, mu, sd)) * 1000
e


#Que 3

rm(list = ls())

average = 65
sd = 13
top = 6
bottom = 6
nxt = 16
a = qnorm(1 - top / 100, average, sd)
a
b = qnorm(1 - (top + nxt) / 100, average, sd)
b
c = qnorm((bottom + nxt) / 100, average, sd)
c
d = qnorm(bottom / 100, average, sd)
d
e = qnorm(1 - (top + nxt) / 100, average, sd) - qnorm((bottom + nxt) / 100, average, sd)
e


#Practical 4

#Que 1

rm(list = ls())

x = seq(0, 10, 1)
f = c(6, 20, 28, 12, 8, 6, rep(0, 5))
n = max(x)
N = sum(f)
s.mean = sum(x * f) / N
s.mean
p = s.mean / n
p
Ef = N * dbinom(x, n, p)
Ef
A = data.frame(x, f, Ef)
A
plot(f, ef, xlab = "Observed", ylab = "Expected", main = "Observed vs Expected", type = "b")
abline(0, 1)

#adequacy
X1 = X(1:5)
