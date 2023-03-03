#Negative Binomial Distribution
par(mfrow = c(3, 1))
NBD = function(r, p, k) {
  pmf = choose(k + r - 1, k) * p ^ r * (1 - p) ^ k
  return(pmf)
}
x = seq(0, 15, 1)
plot(x, NBD(3, 0.2, x), type = "h", xlab = "pmf", ylab = "V", main = "NBD")
plot(x, NBD(3, 0.5, x), type = "h", xlab = "pmf", ylab = "V", main = "NBD")
plot(x, NBD(3, 0.8, x), type = "h", xlab = "pmf", ylab = "V", main = "NBD")


plot(x, NBD(5, 0.2, x), type = "h", xlab = "pmf", ylab = "V", main = "NBD")
plot(x, NBD(5, 0.5, x), type = "h", xlab = "pmf", ylab = "V", main = "NBD")
plot(x, NBD(5, 0.8, x), type = "h", xlab = "pmf", ylab = "V", main = "NBD")

#Exponentiol Distribution
rm(list = ls())
ED = function(lambda, x) {
  pmf = lambda * exp(-lambda * x)
  return(pmf)
}
m = seq(0, 20, length = 50)
plot(m, ED(0.5, m), type = "l", xlab = "pmf", ylab = "V", lty = 1, main = "ED", col = "green")
lines(m, ED(2, m), type = "l", lty = 2, col = "red")
lines(m, ED(5, m), type = "l", lty = 3, col = "blue")
legend("topright", legend = c("lambda = 0.5", "lambda = 2", "lambda = 5"), col = c("green", "red", "blue"), lty = c(1, 2, 3), cex = 0.8)

#Normal Distribution
rm(list = ls())
ND = function(mu, sigma, x) {
  pmf = 1 / (sigma * sqrt(2 * pi)) * exp(-((x - mu) ^ 2) / (2 * sigma ^ 2))
  return(pmf)
}
m = seq(0, 10, length = 100)
plot(m, ND(1, 1, m), type = "l", xlab = "pmf", ylab = "V", lty = 1, main = "ND", col = "green")
lines(m, ND(1, 0.5, m), type = "l", lty = 2, col = "red")
lines(m, ND(1, 2, m), type = "l", lty = 3, col = "blue")
lines(m, ND(1.5, 1, m), type = "l", lty = 4, col = "black")
lines(m, ND(1.5, 1.5, m), type = "l", lty = 5, col = "grey")
legend("topright", legend = c(expression(mu==1,~sigma==1),expression(mu==1,~sigma==0.5),expression(mu==1,~sigma==2),expression(mu==1.5,~sigma==1),expression(mu==1.5,~sigma==1.5)), col = c("green", "red", "blue","black","grey"), lty = c(1, 2, 3, 4, 5), cex = 0.8)
