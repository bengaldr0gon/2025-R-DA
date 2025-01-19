str(iris)
mydata <- iris[,1:4]    # 데이터 준비
head(mydata)

mydata <- iris[,1:4]    # 데이터 준비
# 3개 군집으로 클러스터링, centers=3
fit <- kmeans(x=mydata, centers=3)
fit
# class(fit)

fit$cluster             # 각 데이터에 대한 군집 번호
fit$centers             # 각 군집의 중심점 좌표

# 차원 축소 후 군집 시각화
library(cluster)
shade = TRUE:
  
# shade=TRUE
# 설명: 클러스터 밀도에 따라 음영을 적용할지 여부를 지정
# 역할: 클러스터 내의 데이터 밀도를 시각적으로 표현
#       밀도가 높은 영역은 더 짙은 음영으로 표시
clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE,
         labels=2, lines=0)

clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE,
         labels=0, lines=0)

clusplot(mydata, fit$cluster, color=TRUE, shade=TRUE,
         labels=0, lines=1)

clusplot(mydata, fit$cluster, color=TRUE, shade=FALSE,
         labels=0, lines=1)

# 데이터에서 두 번째 군집의 데이터만 추출
subset(mydata, fit$cluster==2)
subset(mydata, fit$cluster==3)
subset(mydata, fit$cluster==1)

############## 정확도(accuracy) 계산
iris.sp = iris$Species
levels(iris.sp) = c(2, 3, 1)
iris.sp

mean(iris.sp == fit$cluster)
