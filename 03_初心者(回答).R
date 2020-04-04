#とりあえず単回帰分析
y <- c(1,3,4,10,5,1,3,14,21)
x <- c(10,20,10,40,50,10,10,20,70)
ans <- lm(y~x)#回帰分析を実行
ans
s.ans <- summary(ans)#回帰分析の詳細結果抽出
s.ans
coe <- s.ans$coefficient#回帰係数を抽出
#coe <- coef(s.ans)やs.ans$coefも同じ出力
N <- length(y)
aic <- AIC(ans)
result <- cbind(coe,aic,N)
result[2,5:6] <- ""
result
 
#結果をcsvファイルへ出力
write.table(matrix(c("",colnames(result)),nrow=1),"回帰分析.csv",append=T,quote=F,sep=",",row.names=F,col.names=F)
write.table(result,"回帰分析.csv",append=T,quote=F,sep=",",row.names=T,col.names=F)
 
 
#csvファイルを用いた重回帰分析
df <- read.csv("sample-data.csv",header=T,row.names=1,fileEncoding="CP932")
 
###重回帰分析###
#列名で指定
ans <- lm(df$肺活量~df$血圧+df$体重)
s.ans <- summary(ans)
coe <- s.ans$coefficient
N <- nrow(df)
aic <- AIC(ans)
result <- cbind(coe,aic,N)
result[2:nrow(result),5:6] <- ""
write.table(matrix(c("",colnames(result)),nrow=1),filename,append=T,quote=F,sep=","
,row.names=F,col.names=F)
filename = "重回帰出力test1"
write.table(result,filename,append=T,quote=F,sep=",",row.names=T,col.names=F)
write.table("",filename,append=T,quote=F,sep=",",row.names=F,col.names=F)
 
#列番号で指定
dat <- df[,c(3,2,1)]
ans <- lm(df$肺活量~.,data=dat)
s.ans <- summary(ans)
coe <- s.ans$coefficient
N <- nrow(df)
aic <- AIC(ans)
result <- cbind(coe,aic,N)
result[2:nrow(result),5:6] <- ""#excelに複数のデータの結果を付け加えるときにはappendをＴにする
filename <- "重回帰出力test2.csv"
write.table(matrix(c("",colnames(result)),nrow=1),filename,append=T,quote=F,sep=","
,row.names=F,col.names=F)
write.table(result,filename,append=T,quote=F,sep=",",row.names=T,col.names=F)