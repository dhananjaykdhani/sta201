#basic opration
4 + 8
8 - 2
2 * 4
4 / 2


#defining variable
x = c(2, 4, 5, 3, 1, 12, 14, 19, 20, 45)
x

#munti-comand in single line ";"
y = c("A", "G", "r", "u");
y
x + 1
z = c(1, 3, 4, 5, 8, 9, 4, 10, 14, 25)

#check Length
length(z)

#opertaion on variable
x * z
x / z

#sort variable
sort(x)

#index from variable x
x[3]


#que
i = x ^ 2 + z ^ 2 + 10

i


#some basic Fun
sum(i)

Mean = sum(i) / length(z);
Mean

mean(i)
var(i)
sd(i)

summary(i)



#sequence (from,to,step);(from:to);here step willbe 1
j = seq(1, 100, 5);
j
k = seq(1:100);
k


#combine two variable
p = c(j, k);
p


#que

a = seq(2, 30, 1.6);
a
b = seq(9, 40, 1.5);
b

c = a ^ 2 + (b + 3) ^ 3 + a * b + 6;
c

sort(c)
rev(sort(c))
var(c)
sd(c)
mean(c)
median(c)
mode(c)

summary(c)