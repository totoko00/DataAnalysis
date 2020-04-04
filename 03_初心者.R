y <- c(1,3,4,10,5,1,3,14,21)
x <- c(10,20,10,40,50,10,10,20,70)
lm(y~x)
ans <- lm(y~x)
ans
s.ans <- summary(ans)
s.ans
coe <- s.ans$coefficient
aic <- AIC(ans)
N <- length(y)
result <- cbind(coe,aic,N)
result[2,5:6]<-""
write.table(matrix(c("",colnames(result)),nrow=1),"‰ñ‹A•ªÍ.csv",append=T,quote=F,sep=",",row.names=F,col.names=F)
write.table(result,"‰ñ‹A•ªÍ.csv",append=T,quote=F,sep=",",row.names=T,col.names=F)