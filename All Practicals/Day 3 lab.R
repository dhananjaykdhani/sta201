sin(x)

sin(pi / 3)

head(x)

tail(x)

log(x)

log(x, base = 10)

exp(x)

factorial(10)

choose(10, 5)

mtcars

mtcars$mpg

length(mtcars)

matrix(x, 10, 10)

matrix(x, 10, 10, byrow = TRUE)
matrix(x, 10, 10, byrow = FALSE)


x = matrix(x, 10, 10, byrow = TRUE)

x[2, 3]

x[2,]
x[, 4]

x[1:2, 4:5]

det(x)

eigen(x)

dim(x)

#inverse
solve(x)

#transpose
t(x)

diag(x)

diag(5, 10)

#to name Rows & Column
cname = c("A", "B", "C", "D", "E", "F", "G", "H", "I", "J")
rname = c("a", "b", "c", "d", "e", "f", "g", "h", "i", "j")

x = matrix(x, 10, 10, byrow = TRUE, dimnames = list(cname, rname));
x

#to add row or column in matrix

cbind(x, x)
rbind(x, x)


#Bar Plor ; ylim for lenth of grapg ; space for space bw bar ; for horizontal horiz=TRUE ; for wigth; col for colour)
A = mtcars$cyl
barplot(A, xlab = "ug", ylab = "pg", main = "mtcars", ylim = c(0, 10), spac = 1, horiz = FALSE, width = 5, col = "red")

#dot chart
dotchart(A, pch = 9, xlab = "x-axis")

#direct plot
plot(1:32, A, type = "p", cex = 3, col = 1:32, fill = TRUE)


#to take random sample 
sample(93, 10, replace = TRUE)

#for mod %%
3 %% 2






