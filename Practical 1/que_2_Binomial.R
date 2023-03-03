#creating function for binomial distribution
BD <- function(n, x, p) {
  BD = choose(n, x) * p ^ x * (1 - p) ^ (n - x)
  return(BD)
}

#for a
an <- 6
ax <- seq(0, an, 1)

#for b
bn <- 10
bx <- seq(0, bn, 1)

par(mfrow = c(2, 3)) #plotting in 2 rows and 3 columns

#plottin pmf sketch a
plot(ax, BD(an, ax, 0.2), type = "h", xlab = "X", ylab = "PMF", main = "PMF of X for p = 0.2")
plot(ax, BD(an, ax, 0.5), type = "h", xlab = "X", ylab = "PMF", main = "PMF of X for p = 0.5")
plot(ax, BD(an, ax, 0.8), type = "h", xlab = "X", ylab = "PMF", main = "PMF of X for p = 0.8")

#plottin pmf sketch b
plot(bx, BD(bn, bx, 0.1), type = "h", xlab = "X", ylab = "PMF", main = "PMF of X for p = 0.1")
plot(bx, BD(bn, bx, 0.5), type = "h", xlab = "X", ylab = "PMF", main = "PMF of X for p = 0.5")
plot(bx, BD(bn, bx, 0.9), type = "h", xlab = "X", ylab = "PMF", main = "PMF of X for p = 0.5")