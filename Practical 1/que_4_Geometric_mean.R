#Function of Geometric Disrtibution
GD <- function(x, p) {
    GD <- p*(1-p)^(x-1)
    return(GD)
}

x <- seq(0, 10, 1) #class limits

par(mfrow = c(3, 1))

#ploting the graph of Geometric Distribution for p = 0.1, 0.5, 0.8
plot(x, GD(x, 0.1), type = "h", xlab = "x", ylab = "f(x)", main = "Geometric Distribution")
plot(x, GD(x, 0.5), type = "h", xlab = "x", ylab = "f(x)", main = "Geometric Distribution")
plot(x, GD(x, 0.8), type = "h", xlab = "x", ylab = "f(x)", main = "Geometric Distribution")
