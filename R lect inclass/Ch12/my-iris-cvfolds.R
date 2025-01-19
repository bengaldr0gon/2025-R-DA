
######################################
library(cvTools)

data = c(1:10)
# 10개의 데이터, 5개의 폴드
# cv <- cvFolds(n = 10, K = 5, R = 1)
cv <- cvFolds(n = length(data), K = 5, R = 1)

# cv$subsets
print(cv$subsets)

# cv$which
print(cv$which)

# 5개의 폴드
for (fold in 1:cv$K) {
  # 테스트 데이터 인덱스
  test_indices <- cv$subsets[cv$which == fold, ]
  
  # 훈련 데이터 인덱스
  train_indices <- cv$subsets[cv$which != fold, ]
  
  # 출력 확인
  cat("\n폴드:", fold, "\n")
  cat("테스트 데이터 인덱스:", test_indices, "\n")
  cat("훈련 데이터 인덱스:", train_indices, "\n")
}

