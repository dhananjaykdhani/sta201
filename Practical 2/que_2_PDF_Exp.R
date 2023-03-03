rm(list = ls())

#Function of Probability Density Function
PDF <- function(l, x) {
  return(l * exp(-l * x))
}

x<- seq(0, 5, 0.025)

#plotting the function for lambda = 0.5, 2, 5
plot(x, PDF(0.5, x), type = "l", xlab = "x", ylab = "f(x)", main = "Probability Density Function")
lines(x, PDF(2, x), col = "red")
lines(x, PDF(5, x), col = "green")
legend("topright", legend = c("lambda = 0.5", "lambda = 2", "lambda = 5"), col = c("black", "red", "green"), lty = 1, cex = 0.8)
