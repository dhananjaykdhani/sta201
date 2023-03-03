rm(list = ls())
#Function of Negative Binomial Distribution
NBD <- function(x, p, r) {
  NBD <- choose(x - 1, r - 1) * p ^ r * (1 - p) ^ (x - r)
  return(NBD)
}

x <- seq(0, 100, 1) #class limits

par(mfrow = c(3, 2))

# for a
ar <- 3

#for b
br <- 5

#ploting the graph of Negative Binomial Distribution for p = 0.1, 0.5, 0.8 
#when r=3
plot(x, NBD(x, 0.1, ar), type = "h",  xlab = "x", ylab = "f(x)", main = "Negative Binomial Distribution")
plot(x, NBD(x, 0.5, ar), type = "h",  xlab = "x", ylab = "f(x)", main = "Negative Binomial Distribution")
plot(x, NBD(x, 0.8, ar), type = "h",  xlab = "x", ylab = "f(x)", main = "Negative Binomial Distribution")

#ploting the graph of Negative Binomial Distribution for p = 0.1, 0.5, 0.8
#when r=5
plot(x, NBD(x, 0.1, br), type = "h",  xlab = "x", ylab = "f(x)", main = "Negative Binomial Distribution")
plot(x, NBD(x, 0.5, br), type = "h",  xlab = "x", ylab = "f(x)", main = "Negative Binomial Distribution")
plot(x, NBD(x, 0.8, br), type = "h",  xlab = "x", ylab = "f(x)", main = "Negative Binomial Distribution")
