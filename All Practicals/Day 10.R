#Random Sample
rm(list = ls())
set.seed(1)

#DU(1,50)
a = 1
b = 50
n = length(a:b)
p = 1 / n
x1 = sample(a:b, 1000, p)
s.mean = mean(x1)
s.var = var(x1)
t.mean = (a + b) / 2
DU = c(s.mean, s.var, t.mean, s.var);
DU

#binomial(10,0.6)
n1 = 10
p1 = 0.6
x2 = rbinom(1000, n1, p1)
s.mean = mean(x2)
s.var = var(x2)
t.mean = n1 * p1
t.var = n1 * p1 * (1 - p1)
binom = c(s.mean, s.var, t.mean, t.var)
binom

#Poisson(4)
x3 = rpois(1000, 4)
s.mean = mean(x3)
s.var = var(x3)
t.mean = 4
t.var = 4
pois = c(s.mean, s.var, t.mean, t.var)
pois

#Geomertic(0.4)
x4 = rgeom(1000, 0.4)
s.mean = mean(x4)
s.var = var(x4)
t.mean = 1 / 0.4
t.var = (1 - 0.4) / (0.4 ^ 2)
geom = c(s.mean, s.var, t.mean, t.var)
geom

#Hypergeometric(30,10,6)
n3 = 10
m3 = 5
k = 3
x5 = rhyper(1000, n3, m3, k)
s.mean = mean(x5)
s.var = var(x5)
t.mean = k * (n3 / (n3 + m3))
t.var = k * (n3 / (n3 + m3)) * (m3 / (n3 + m3)) * ((n3 + m3 - k) / (n3 + m3 - 1))
hyper = c(s.mean, s.var, t.mean, t.var)
hyper


d = data.frame(DU, binom, pois, geom, hyper)
rownames(d) = c("s.mean", "s.var", "t.mean", "t.var")
print(d)

rm(list = ls())
set.seed(123)
#Rectangular Distribution
a = -5
b = 5
n = length(a:b)
p = 1 / n
x1 = sample(a:b, 1000, p)
s.mean = mean(x1)
s.var = var(x1)
t.mean = (a + b) / 2
t.var = (b - a) ^ 2 / 12
rect = c(s.mean, s.var, t.mean, t.var)
rect

#Exponential
x2 = rexp(1000, 3)
s.mean = mean(x2)
s.var = var(x2)
t.mean = 1 / 3
t.var = 1 / 9
exp = c(s.mean, s.var, t.mean, t.var)
exp

#Normal
a1 = 7
b1 = 3
x3 = rnorm(1000, a1, b1)
s.mean = mean(x3)
s.var = var(x3)
t.mean = a1
t.var = b1 ^ 2
norm = c(s.mean, s.var, t.mean, t.var)
norm

#Gamma
a2 = 3
b2 = 6
x4 = rgamma(1000, a2, b2)
s.mean = mean(x4)
s.var = var(x4)
t.mean = a2 / b2
t.var = a2 / b2 ^ 2
gamma = c(s.mean, s.var, t.mean, t.var)
gamma

#Beta 1
a3 = 6
b3 = 2
x5 = rbeta(1000, a3, b3)
s.mean = mean(x5)
s.var = var(x5)
t.mean = a3 / (a3 + b3)
t.var = (a3 * b3) / ((a3 + b3) ^ 2 * (a3 + b3 + 1))
beta1 = c(s.mean, s.var, t.mean, t.var)
beta1

#Beta 2
a4 = 3
b4 = 9
x6 = rgamma(1000, a4, 1)/rgamma(1000,b4,1)
s.mean = mean(x6)
s.var = var(x6)
t.mean = a4 / (b4-1)
t.var = (a4*(a4+b4-1)) / ((b4-2)*(b4-1)^2)
beta2 = c(s.mean, s.var, t.mean, t.var)
beta2

d = data.frame(rect, exp, norm, gamma, beta1, beta2)
rownames(d) = c("s.mean", "s.var", "t.mean", "t.var")
print(d)