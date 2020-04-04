res <- c(1,0,0,0,0,0,0,0,1,0,
         0,1,1,0,0,0,1,0,0,1,
         1,1,1,0,0,0,0,0,1,1,
         0,0,1,0,1,0,1,0,0,0,
         1,1,0,1,0,1,0,1,0,0,
         1,1,0,0,0,0,0,0,0,1,
         0,1,1,0,1,0,0,0,0,1)

item <- c("僕のヒーローアカデミア","魔法科高校の劣等生","図書館戦争",
          "中間管理録トネガワ","orange","ポプテピピック2nd","黒執事",
          "１日外出録ハンチョウ","ドラゴンボール超","幼女戦記")

user <- c("佐藤","鈴木","橋本","菅野","松本","坂本","小林")

mat <- t(matrix(res,10,7))
colnames(mat) <- item
rownames(mat) <- user

get_dist <- function(v1,v2,method){
  if (method =="euclidean") {
    return(1/sqrt(sum((v1-v2)^2)))
  }else if (method =="cosine") {
    return(v1%*%v2/(sqrt(sum(v1^2))*sqrt(sum(v2^2))))
  }else{ # perarson
    return(cov(v1,v2)/(sd(v1)*sd(v2)))
  }
}

ufam <- cbind(
  apply(mat[1:6,], MARGIN = 1,FUN = function(x)get_dist(x,mat["小林",],"euclidean")),
  apply(mat[1:6,], MARGIN = 1,FUN = function(x)get_dist(x,mat["小林",],"cosine")),
  apply(mat[1:6,], MARGIN = 1,FUN = function(x)get_dist(x,mat["小林",],"pearson"))
)
colnames(ufam) <- c("euclidean","cosine","pearson")
print(round(ufam,digit =2 ))

top3 <- head(sort(ufam[,"cosine"],decreasing = TRUE),3)
print(round(top3,digit=2))

top3_names <- names(top3)
notbuy <- mat["小林",][mat["小林",]==0]
notbuy_names <- names(notbuy)
reco <- mat[top3_names,notbuy_names]
reco

sort(colMeans(reco),decreasing = TRUE)