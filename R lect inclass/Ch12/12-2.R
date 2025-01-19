std <- function(X) {                # 표준화 함수
  return((X-min(X)) /(max(X)-min(X)))
}

mydata <- apply(iris[,1:4], 2, std)  # 표준화된 데이터 준비
mydata

fit <- kmeans(x=mydata, centers=3)
fit

############### 정답율 계산 ###########################
fit$cluster             # 각 데이터에 대한 군집 번호
iris.sp = iris$Species
iris.sp

levels(iris.sp) = c(1, 3, 2)
iris.sp

mean(fit$cluster == iris.sp)

