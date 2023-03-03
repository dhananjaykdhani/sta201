rm(list = ls())
# par(mfrow = c(2,2))

#function of normal distrubution
ND <- function(x, mu, si) {
  return((1 / (si * sqrt(2 * pi))) * exp(-((x - mu) ^ 2) / (2 * si ^ 2)))
}

x <- seq(-10, 10, 0.001)

#plotting the function for mu = 1, 1, 1, 1.5, 1.5 and sigma = 1, 05, 2, 1, 1.5
plot(x, ND(x, 1, 1), type = "l", xlab = "x", ylab = "f(x)", main = "Normal Distribution")
lines(x, ND(x, 1, 0.5), col = "red")
lines(x, ND(x, 1, 2), col = "green")
lines(x, ND(x, 1.5, 1), col = "blue")
lines(x, ND(x, 1.5, 1.5), col = "yellow")
legend("topright", legend = c("mu = 1, sigma = 1", "mu = 1, sigma = 0.5", "mu = 1, sigma = 2", "mu = 1.5, sigma = 1", "mu = 1.5, sigma = 1.5"), col = c("black", "red", "green", "blue", "yellow"), lty = 1, cex = 0.8)
