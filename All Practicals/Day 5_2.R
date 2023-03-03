#Poision

P = function(l, x) {
  PDF = (exp(-l) * l ^ x) / factorial(x)
  return(PDF)
}

par(mfrow = c(1, 3))

X = seq(1, 50, 1)

plot(1:50, P(1, X), type = "h")
plot(1:50, P(3, X), type = "h")
plot(1:50, P(6, X), type = "h")