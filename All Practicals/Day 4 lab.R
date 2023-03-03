x = c(0, 1, 0, 0, 0, 1, 4, -17, 8)
y = c(1, 2, 3, 4, 5, 6, 7, 8, 9)
M = matrix(x, 3, 3, byrow = TRUE)
N = matrix(y, 3, 3, byrow = TRUE)
M + N

det(M)
det(N)
eigen(M)
eigen(N)
dim(M)
dim(N)
solve(M)
solve(N)
t(M)
t(N)
diag(M)
diag(N)

#Multiplication of two Matrix
A = M %*% M
X = (A %*% M) - 8 * A + 17 * M - 4
X


rowMeans(M)
colMeans(M)
rowMeans(N)
colMeans(N)


install.packages("expm")
library("expm")

M %^% 2


#Function

U = function(a) #Creating Function
{ a * a + 5 * a + 10 }

U(6) #Calling Function


Q = function(c, d) {
  S = c * c + 5 * c + 10
  T = d * c + (c + 10) * d
  return(c(S, T, S * T))
}
Q(2, 3)

P = function(l, j) {
  PDF = (exp(-l) * l ^ j) / factorial(j)
  return(PDF)
}

P(5, 2)

O = seq(1, 4, 0.2)
P(2, O)

plot(1:16, P(2, O), type = "l", xlab = "x-axis", ylab = "y-axis")

data.frame(value=O,PDF=P(2,3))

G=function(W,E,R)
{
BIN=choose(W,E)*R^W*(1-R)^(W-E)
return (BIN)
}

D = seq(1,50,1);D
R=0.5
W=60
G(W,D,R)

plot(1:50,G(W,D,R),type="l",xlab = "x-axis", ylab = "y-axis")












