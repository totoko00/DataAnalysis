#ベクトルの作成
x <- c(1,2,3,4,5)
x
y <- c(1:5,3:1)
y
z <- c(rep(3,4),rep(c(1,5,10),c(2,3,4)))
z
a <- c("A","B","C")
a
#ベクトルを作るときはc()で指定。#行列
mat1 <- matrix(c(1:10),nrow=2,ncol=5)
mat1 <- matrix(c(1:10),2,5)
mat2 <- matrix(c(1:10),2,byrow=T)
mat3 <- matrix(c(1,3,2,5,7,3,2,15,2),3,3,byrow=T)
#行列はmatrix()で作成。byrow=Tで要素順が変わる。#行列の計算
mat1+mat2
mat1-mat2
mat1*mat2
mat1/mat2
mat3%*%mat3
solve(mat3)#行列の各要素へのアクセス（参照）
p <- mat1[1,2]
q <- mat3[,2]
r <- mat1[1,c(2,5)]
