#Function of Beta Distribution of First Kind
BDFK <- function(x, a, b) {
  return((gamma(a + b) / (gamma(a) * gamma(b))) * x ^ (a - 1) * (1 - x) ^ (b - 1))
}
# par(mfrow = c(2, 2))

x <- seq(0, 1, 0.01)

#plotting the function for a = 0.5, 5, 1, 2 and b = 0.5, 1, 3, 5
plot(x, BDFK(x, 0.5, 0.5), type = "l", xlab = "x", ylab = "f(x)", main = "Beta Distribution of First Kind")
lines(x, BDFK(x, 5, 1), col = "red")
lines(x, BDFK(x, 1, 3), col = "green")
lines(x, BDFK(x, 2, 5), col = "blue")
legend("topright", legend = c("a = 0.5, b = 0.5", "a = 5, b = 1", "a = 1, b = 3", "a = 2, b = 5"), col = c("black", "red", "green", "blue"), lty = 1, cex = 0.8)
