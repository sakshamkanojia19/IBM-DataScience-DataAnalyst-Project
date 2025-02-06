id<-c(1,2,3,4,5,6,7)
weight<-c(20,27,24,22,23,25,28)
gender<-c("male","female", "female","male","male","female","male")
smoking<-c("no", "yes", "no", "yes","yes","no","yes")
tumour<-c("small", "large", "medium", "large","medium","large","small")
mydata<-data.frame(id,weight,gender,smoking,tumour)
mydata

mydata[1:3,]
mydata[,4:5]
mydata[1:3,4:5]

names(mydata)[3]<-"Gender"
mydata

# sort command in increasing order
newdata1 <- mydata[order(weight), ] 
newdata1

# sort command in decreasing order
newdata2 <- mydata[order(-weight), ] 
newdata2

#transpose
datamy<-t(mydata)
datamy

ldf <- split(mydata, gender)
femdata<-mydata[gender=='female', ] #for extracting female data
femdata

malesmoking<-mydata[gender=="male" & smoking=="yes", ] 
malesmoking

mean(weight[gender=="female"])

maleover23<-mydata[gender=='male'& weight>23, ]  
maleover23

maleover23<-mydata[gender=='male'& weight>23, ]  
maleover23
