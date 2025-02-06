id<-c(1,2,3,4,5,6,7)
weight<-c(20,27,24,22,23,25,28)
gender<-c("male","female", "female","male","male","female","male")
smoking<-c("no", "yes", "no", "yes","yes","no","yes")
tumour<-c("small", "large", "medium", "large","medium","large","small")
mydata<-data.frame(id,weight,gender,smoking,tumour)
mydata


count <- table(smoking)
count

percent<-(count/7)*100
percent
barplot(percent,
        col=c("red","blue"),
        density= c(30,45),
        angle=c(0,90),
        horiz=T,
        border="red",
        las=3)
barplot(counts, 
        main='Smoking', 
        xlab = 'Smoker', 
        ylab='%', 
        las=3, 
        names.arg = c('No','Yes'), col=c("darkblue","red"),
        legend = rownames(counts), space=1,
        beside = F)
grid()
# Colored Mosaic Plot
mosaicplot(counts, col=c(3,8),las = 3)
pie(count,
    col=c(2,3),
    density=c(20,30),
    angle=c(40,50),
    border = 3,
    radius=0.8)

