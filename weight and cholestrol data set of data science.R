ID<-c(1,2,3,4,5,6,7,8)
Gender<-c("male","female","female","male","male","female","male","female")
Age<-c(25,30,65,45,32,50,22,28)
Weight<-c(80,64,76,90,45,50,70,65)
Height<-c(1.83,1.75,1.57,1.65,1.94,1.85,1.53,1.62)
Cholestrol<-c(15,18,25,30,40,32,23,28)
Income<-c(15000,20000,35000,12000,50000,8000,60000,9000)
#LHS=RHS
#Liberty, Rule
socialdata<-data.frame(ID,Gender,Age,Weight,Height,Cholestrol,Income)
socialdata
attach(socialdata)

help(plot)

plot(Weight,Cholestrol,
     main = "Saksham Kanojia Data File",
     sub="Engineering Students",
     col="darkgreen",
     pch=19)
#Hard coding ---> Moderate Coding --> No Coding--->
text(Weight, Cholestrol, cex=0.6,pos=1, col="black")
text(Weight,Cholestrol, Gender,cex=0.9,pos=2,col="red")
text(Weight,Cholestrol,Weight,cex=0.7,pos=3,col="blue")
text(Weight,Cholestrol,Cholestrol,cex=0.6,pos=4,col="green")

#separate scatter plot according to the catergorical varible
plot(Cholestrol~Weight)
points(Cholestrol[Gender=="male"])~Weight[Gender=="male"]
main="Weight vs. Cholestrol",
xlab="Weight",ylab="Cholestrol",col="blue",pch=16)
points(Cholestrol[Gender=="female"]~Weight[Gender=="female"],
       main="Weight vs. Cholestrol",
       xlab="Weight",ylab="Cholestrol",col="red",pch=10)

abline(lm(Cholestrol~Weight))
abline(lm(Cholestrol[Gender=="male"]~Weight[Gender=="male"]),col=2)
abline(lm(Cholestrol[Gender=="female"]~Weight[Gender=="female"]),col=3)













