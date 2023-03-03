#function of Hyper Geometric Distribution
HG <- function(x, N, n, M) {
  HG <- choose(M, x) * choose(N - M, n - x) / choose(N, n)
  return(HG)
}

x <- seq(0, 10, 1) #class limits

#ploting the graph of Hyper Geometric Distribution for N = 30, M = 10, n = 6
plot(x, HG(x, 30, 6, 10), type = "h", xlab = "x", ylab = "f(x)", main = "Hyper Geometric Distribution")