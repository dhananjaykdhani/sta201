# Generate 1000 random numbers from following distributions using inbuilt commands in R
# a) DU(N=50)
# b) B(10, 0.6)
# c) P(4)
# d) G(0.4)
# e) NB(r=6, p=0.8)
# f) HG (N=30,M=10,n=6)
# i. Using generated sample obtain sample mean and variance.
# ii. Compare sample mean and variance with theoretical mean and variance.

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

#Negative Binomial(6,0.8)
x5 = rnbinom(1000, 6, 0.8)
s.mean = mean(x5)
s.var = var(x5)
t.mean = 6 * (1 - 0.8) / 0.8
t.var = 6 * (1 - 0.8) / (0.8 ^ 2)
negbin = c(s.mean, s.var, t.mean, t.var)
negbin

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