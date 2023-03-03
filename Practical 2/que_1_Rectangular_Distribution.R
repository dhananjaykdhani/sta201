#Function of Rectangular Distribution
RD <- function(x, a, b) {
  return(rep(1 / (b - a), length(x)))
}

x<- seq(-1, 1, 0.01) 

#plotting the function of Rectangular Distribution for a = -1, b = 1
plot(x, RD(x, -1, 1), type = "l", xlab = "x", ylab = "f(x)", main = "Rectangular Distribution")