if (!require("cvTools")) {
  install.packages("cvTools")  
}
# library(cvTools)                   # cvFolds() 함수 지원

k = 10                               # 10-fold
folds <- cvFolds(nrow(iris), K=k)    # 폴드 생성
folds

# cvFolds 객체:
#   리스트 형태의 객체로, 다음과 같은 요소를 포함합니다:
#   n: 데이터 샘플 수.
#   K: 폴드 수.
#   which: 각 샘플이 속한 폴드 번호.
#   subsets: 폴드별 샘플의 인덱스를 나타내는 행렬.

class(folds)
str(folds)
folds$K
folds$subsets # 다음 코드에서는 사용하지 않음
folds$which

folds$which == 1
folds$which == 2

acc <- c()                           # 폴드별 예측 정확도 저장용 벡터
for (i in 1:k) {
  ts.idx <- folds$which == i         # 테스트용 데이터의 인덱스, 15개
  print(sum(ts.idx))
  # ds.tr <- iris[-ts.idx, 1:4]      # 훈련용 데이터셋(교재 틀림)
  ds.tr <- iris[!ts.idx, 1:4]        # 훈련용 데이터셋
  print(nrow(ds.tr))
  ds.ts <- iris[ts.idx, 1:4]         # 테스트용 데이터셋
  print(nrow(ds.ts))
  
  cl.tr <- factor(iris[!ts.idx, 5])  # 훈련용 데이터셋의 그룹(품종) 정보
  cl.ts <- factor(iris[ts.idx, 5])   # 테스트용 데이터셋의 그룹(품종) 정보
  # print(length(cl.ts))
  
  pred <- knn(ds.tr, ds.ts, cl.tr, k = 5)
  acc[i] <- mean(pred==cl.ts)        # 예측 정확도
}
acc                                  # 폴드별 예측 정확도
mean(acc)                            # 폴드평균 예측 정확도

#########################################
idx = c(T, T, T, F)
idx
!idx

#########################################
rm(list=ls())
k = 5                                # 5-fold
folds <- cvFolds(nrow(iris), K=k)    # 폴드 생성
folds

acc <- NULL                          # 폴드별 예측 정확도 저장용 벡터
for (i in 1:k) {
  ts.idx <- folds$which == i         # 테스트용 데이터의 인덱스
  print(i)
  print(ts.idx)
  print(sum(ts.idx))
  ds.tr <- iris[!ts.idx, 1:4]        # 훈련용 데이터셋
  ds.ts <- iris[ts.idx, 1:4]         # 테스트용 데이터셋
  cl.tr <- factor(iris[!ts.idx, 5])  # 훈련용 데이터셋의 그룹(품종) 정보
  cl.ts <- factor(iris[ts.idx, 5])   # 테스트용 데이터셋의 그룹(품종) 정보
  
  pred <- knn(ds.tr, ds.ts, cl.tr, k = 5)
  acc[i] <- mean(pred==cl.ts)        # 예측 정확도
}
acc                                  # 폴드별 예측 정확도
mean(acc)                            # 폴드평균 예측 정확도
