curve(sin(x),-10,5,col="blue")
dnorm(7,10,15) #dnorm(x,平均,標準偏差)
curve(dnorm(x,50,10),0,100)
#add=TRUEとすることで複数のグラフを一枚に出力できる
curve(dnorm(x,350.92,0.85),340,360,add=TRUE,col="red")
curve(dnorm(x,350,3),340,360,add=TRUE,col="green")