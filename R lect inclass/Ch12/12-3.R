install.packages("class")
library(class)

# 훈련용 데이터와 테스트용 데이터 준비
tr.idx <- c(1:25, 51:75, 101:125)   # 훈련용 데이터의 인덱스
ds.tr <- iris[tr.idx, 1:4]          # 훈련용 데이터셋
ds.tr
ds.ts <- iris[-tr.idx, 1:4]         # 테스트용 데이터셋
ds.ts

cl.tr <- factor(iris[tr.idx, 5])    # 훈련용 데이터셋의 그룹(품종) 정보
cl.tr
cl.ts <- factor(iris[-tr.idx, 5])   # 테스트용 데이터셋의 그룹(품종) 정보
cl.ts

####################################################
pred <- knn(ds.tr, ds.ts, cl.tr, k=3, prob=TRUE)
pred

acc <- mean(pred==cl.ts)            # 예측 정확도
acc

table(pred, cl.ts)                   # 예측값과 실제값 비교 통계

##################################################
pred <- knn(ds.tr, ds.ts, cl.tr, k=5, prob=TRUE)
pred

acc <- mean(pred==cl.ts)            # 예측 정확도
acc

table(pred, cl.ts)                   # 예측값과 실제값 비교 통계

##################################################
pred <- knn(ds.tr, ds.ts, cl.tr, k=7, prob=TRUE)
pred

acc <- mean(pred==cl.ts)            # 예측 정확도
acc

table(pred, cl.ts)                   # 예측값과 실제값 비교 통계

###################################
class(iris3)

iris3
iris3[,,'Setosa']
iris3[,,'Versicolor']
iris3[,,'Virginica']

train <- rbind(iris3[1:25,,1], iris3[1:25,,2], iris3[1:25,,3])
test <- rbind(iris3[26:50,,1], iris3[26:50,,2], iris3[26:50,,3])
cl <- factor(c(rep("s",25), rep("c",25), rep("v",25)))
cl
knn(train, test, cl, k = 3, prob=TRUE)

# 최근 계산된 값의 속성을 확인
# 만약 .Last.value가 속성을 가진 객체라면, 그 속성 정보가 반환
attributes(.Last.value)

# 최근 계산값이 벡터일 경우
x <- c(a = 1, b = 2, c = 3) # 이름 속성 추가
x
attributes(.Last.value)

3 + 5
print(.Last.value) # 결과: 8


