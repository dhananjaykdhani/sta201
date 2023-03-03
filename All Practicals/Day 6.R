#Geometric Distribution

par(mfrow = c(3, 3))
x = seq(0, 3, 1)
GD = function(p, x) {
  pmf = (1 - p) ^ x * p
  return(pmf)
}

plot(0:3, GD(0.2, x), type = "h", xlab = "pmf", ylab = "V", main = "GD")
plot(0:3, GD(0.5, x), type = "h", xlab = "pmf", ylab = "V", main = "GD")
plot(0:3, GD(0.8, x), type = "h", xlab = "pmf", ylab = "V", main = "GD")

y = seq(0, 5, 1)

plot(0:5, GD(0.2, y), type = "h", xlab = "pmf", ylab = "V", main = "GD")
plot(0:5, GD(0.5, y), type = "h", xlab = "pmf", ylab = "V", main = "GD")
plot(0:5, GD(0.8, y), type = "h", xlab = "pmf", ylab = "V", main = "GD")

#Hyper Geometric Distribution

z = seq(0, 6, 1)
HGD = function(M, N, n, x) {
  pmf = choose(M, x) * choose((N - M), (M - x)) / choose(N, n)
  return(pmf)
}
plot(0:6, HGD(10, 30, 6, z), type = "h", xlab = "pmf", ylab = "V", main = "HGD")


#Retingular Distribution
p = -1
q = 1
H = 1 / (q - p)
plot(-1:1, rep(H, 3), type = "l", xlab = "pmf", ylab = "V", main = "RD")


#Expotetional Distribution
m = seq(0, 5, 0.025)
ED = function(lambda, x) {
  pmf = lambda * exp(-lambda * x)
  return(pmf)
}
plot(m, ED(0.5, m), type = "l", xlab = "pmf", ylab = "V", main = "ED", col = "green") 
lines(m, ED(2, m), type = "l", col = "red")
lines(m, ED(5, m), type = "l", col = "blue")

m
