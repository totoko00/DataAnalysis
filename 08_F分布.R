curve(df(x,1,1))
curve(df(x,100,1000),0,5,col = "red", add = TRUE) #自由度(100,1000) 赤
curve(df(x,1,1),0,5,col = "green",add = TRUE) #自由度(100,1000) 緑
curve(df(x,10,100),0,5,col = "blue",add = TRUE) #自由度(100,1000) 青
curve(df(x,100,10),0,5,col = "brown",add = TRUE) #自由度(100,1000) 茶
curve(df(x,10,10),0,5,col = "purple",add = TRUE) #自由度(100,1000) 紫