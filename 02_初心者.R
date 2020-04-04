#データ読み込み
df <- read.csv("sample-data.csv",header=T,row.names=1)#①読み込みたいデータ名を""で囲む
#②headerは列名があるか無いか。あるときはT（TURE）、ない時はF（FALSE）
#③row.namesは行名の指定。row.names=1だと1列目が列名になる#データのアクセス
df[,1]　#1列目のデータ
df[1,]　#1行目のデータ
df$年齢　#「年齢」という名の列のデータ#データの取り出し方
#例１：男性だけを取り出す
M.dat <- subset(df,df$性別=="M")
M.dat <- subset(df,df[,4]=="M")
M.dat <- df[df$性別 =="M",]#例２：体重が60kg未満の人を取り出す
weight60 <- subset(df,df$体重<60)
weight60 <- df[df[,6]<60,]#例３：男性かつ体重が60kg未満の人を取り出す
M.60 <- subset(df,df$性別=="M" & df$体重<60)
M.60 <- df[df[,4]=="M" & df[,6]<60,]
h<-subset(df,df$肺活量>=4000)
h
h1<-subset(df,df$肺活量>=3000 & df$肺活量<=4000)
h1
b<-subset(df,df$病気==1 & df$体重>=70)
b