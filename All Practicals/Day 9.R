BD2 = function(a,b,x)
{
    pdf = x^(a-1)*(1-x)^(b-1)/beta(a,b)
    return(pdf)
}

x = seq(0,1,0.0001)
A = BD2(1,1,x)
B = BD2(5,1,x)
C = BD2(1,3,x)
D = BD2(2,5,x)
plot(x,A,type="l",col="red",lwd=2,xlab="x",xlim=c(0,1.5
),ylim=c(0,4),ylab="pdf",main="Beta Distribution")
lines(x,B,col="blue",lwd=2)
lines(x,C,col="green",lwd=2)
lines(x,D,col="black",lwd=2)
legend("topright",c("a=0.5,b=0.5","a=5,b=1","a=1,b=3","a=2,b=5"),col=c("red","blue","green","black"),lty=1,lwd=2)