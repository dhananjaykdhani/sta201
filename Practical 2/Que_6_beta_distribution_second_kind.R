#Function of Beta Distribution of Second Kind
BDSK <- function(x, a, b) {
    return(1/beta(a, b) * x ^ (a - 1) / (1 + x) ^ (a + b))
}

x <- seq(0, 2, 0.001)

#plotting the function for a = 1, 5, 1, 2 and b = 1, 1, 3, 5
plot(x, BDSK(x, 1, 1), type = "l", xlab = "x", ylab = "f(x)", main = "Beta Distribution of Second Kind")
lines(x, BDSK(x, 5, 1), col = "red")
lines(x, BDSK(x, 1, 3), col = "green")
lines(x, BDSK(x, 2, 5), col = "blue")
legend("topright", legend = c("a = 1, b = 1", "a = 5, b = 1", "a = 1, b = 3", "a = 2, b = 5"), col = c("black", "red", "green", "blue"), lty = 1, cex = 0.8)
