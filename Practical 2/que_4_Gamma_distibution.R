#Function for pdf of Gamma Distribution
G <- function(x, a, b) {
  return((b ^ a / gamma(a)) * x ^ (a - 1) * exp(-b * x))
}

x <- seq(0, 5, 0.0001)

#plotting the function for a = 1, 2, 1, 2 and b = 1, 1, 2, 2
plot(x, G(x, 1, 1), type = "l", xlab = "x", ylab = "f(x)", main = "Gamma Distribution")
lines(x, G(x, 2, 1), col = "red")
lines(x, G(x, 1, 2), col = "green")
lines(x, G(x, 2, 2), col = "blue")
legend("topright", legend = c("a = 1, b = 1", "a = 2, b = 1", "a = 1, b = 2", "a = 2, b = 2"), col = c("black", "red", "green", "blue"), lty = 1, cex = 0.8)
