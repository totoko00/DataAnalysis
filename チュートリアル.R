library(recommenderlab)

#データセットのロード
data('MovieLense')

# クラスの確認
class(MovieLense)

MovieLense.mtx <- as(MovieLense,"matrix")

dim(MovieLense.mtx)
head(MovieLense.mtx[,1:10])

image(MovieLense)
movies.per.user <- apply(!is.na(MovieLense.mtx), 1, sum) #!is.na()でNA以外の要素を見ている
hist(movies.per.user,main = "number of rated movies")

train <- MovieLense[1:100]

rec <- Recommender(train,method="IBCF")

pred.ratings <- predict(rec,MovieLense[101],type="ratings")

pred.ratings.topN <- head(sort(as(pred.ratings,"list")[["101"]],decreasing = TRUE),n=10)

as.data.frame(pred.ratings.topN)