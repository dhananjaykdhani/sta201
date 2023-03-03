#Poision Distribution
x = seq(0, 15, 1)

#Probability Mass Function
p = function(l, x) {
  return((l ^ x) * exp(-l) / factorial(x))
}

par(mfrow = c(3, 1))

# plot pmf for lambda = 1, 3, 6
plot(x, p(1, x), type = "b", xlab = "x", ylab = "P(X = x)", main = "lambda = 1")
plot(x, p(3, x), type = "b", xlab = "x", ylab = "P(X = x)", main = "lambda = 3")
plot(x, p(6, x), type = "b", xlab = "x", ylab = "P(X = x)", main = "lambda = 6")
