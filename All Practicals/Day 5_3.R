#Geometic
X=seq(1,100,1)
M= function(P,X){
PMF=((1-P)^X)*P
return(PMF)
}

par(mfrow = c(1, 3))


plot(1:100,M(0.1,X),type="h")
plot(1:100,M(0.5,X),type="h")
plot(1:100,M(0.8,X),type="h")

