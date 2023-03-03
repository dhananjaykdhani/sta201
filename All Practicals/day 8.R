#PDF of Gamma distribution
#Two parameters

par(mfrow = c(2, 1))

gd = function(l, g, x) {
  pdf = l ^ g * x ^ (l - 1) * exp(-l * x) / gamma(l)
  return(pdf)
}

x = seq(0, 100, 0.001)
plot(x, gd(1, 1, x), type = "l", xlab = "pdf", ylab = "V", lty = 1, main = "Gamma Distribution", col = "green")
lines(x, gd(1, 2, x), type = "l", lty = 2, col = "red")
lines(x, gd(2, 1, x), type = "l", lty = 3, col = "blue")
legend("topright", legend = c(expression(l == 1, ~ g == 1), expression(l == 1, ~ g == 2), expression(l == 2, ~ g == 1)), col = c("green", "red", "blue"), lty = c(1, 2, 3), cex = 0.8)

rm(list = ls())
# PDF of Beta distribution (first Kind)
x = seq(0, 1, 0.0001)
bd = function(a, b, x) {
  pdf = (1 / beta(a, b)) * x ^ (a - 1) * (1 - x) ^ (b - 1)
  return(pdf)
}
plot(x, bd(0.5, 0.5, x), type = "l", xlab = "pdf", xlim = c(0, 1), ylim = c(0, 4), ylab = "V", lty = 1, main = "Beta Distribution", col = "green")
lines(x, bd(5, 1, x), type = "l", lty = 2, col = "red")
lines(x, bd(1, 3, x), type = "l", lty = 3, col = "blue")
lines(x, bd(2, 5, x), type = "l", lty = 4, col = "black")
legend("topright", legend = c(expression(a == 0.5, ~ b == 0.5), expression(a == 5, ~ b == 1), expression(a == 1, ~ b == 3), expression(a == 2, ~ b == 5)), col = c("green", "red", "blue", "black"), lty = c(1, 2, 3, 4), cex = 0.8)
