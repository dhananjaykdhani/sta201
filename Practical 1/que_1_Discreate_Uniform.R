#Declearation of Random Variable X & Y
x <- seq(0, 10, 1)
x

y <- seq(11, 30, 1)
y

#Declearing PMF
px <- rep(1/length(x), 11)
px

py <- rep(1/length(y), 20)
py

par(mfrow = c(2, 1)) #plotting in 2 rows and 1 columns
#Plotting the PMF
plot(x, px, type = "h", xlab = "X", ylab = "PMF", main = "Discreate Uniform Distribution")
plot(y, py, type = "h", xlab = "Y", ylab = "PMF", main = "Discreate Uniform Distribution")