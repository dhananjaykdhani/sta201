x = seq(0, 10, 1)
y = seq(11, 30, 1)
x;
y

a = rep(1 / length(x), 11);
a
b = rep(1 / length(y), 20);
b

par(mfrow = c(1, 2))
plot(x, a, type = "h", xlab = "x-axis", ylab = "y-axis")
plot(y, b, type = "h", xlab = "x-axis", ylab = "y-axis")




#que: a. n=6,p=0.2,0.5&0.8)  b. n=10,p=0.1,0.5&0.9

par(mfrow = c(1, 6))

bin = function(N, X, P) {
  bin = choose(N, X) * P ^ X * (1 - P) ^ (N - X)
  return(bin)
}

Q = seq(0, 6, 1)
Z = bin(6, Q, 0.2)
E = bin(6, Q, 0.5)
R = bin(6, Q, 0.8)

plot(Q, Z, type = "h")
plot(Q, E, type = "h")
plot(Q, R, type = "h")


Q = seq(0, 10, 1)
C = bin(6, Q, 0.1)
V = bin(6, Q, 0.5)
N = bin(6, Q, 0.9)


plot(Q, C, type = "h")
plot(Q, V, type = "h")
plot(Q, N, type = "h")














