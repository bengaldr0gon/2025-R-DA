rm(list=ls())

# R 패키지 **car**
# "Companion to Applied Regression"**의 약자
# 회귀 분석 및 통계 모델을 지원하는 
# 다양한 도구를 제공하는 인기 있는 패키지

if (!require("car")) {
  install.packages("car")
}
  
library(car)

# education: 평균 교육 수준.
# income: 평균 수입.
# women: 여성 비율(백분율).
# prestige: 사회적 명성 점수.
# census: 직업 식별 번호.
# type: 직업 유형(프로페셔널, 화이트칼라, 블루칼라).
head(Prestige)
str(Prestige)
class(Prestige)
sum(is.na(Prestige))
Prestige[!complete.cases(Prestige), ]
# 사회적 명성이 높은 직업부터 출력
Prestige[order(Prestige$prestige, decreasing=T), ]

# 열 census, type은 제거
newdata <- Prestige[,c(1:4)]        # 회귀식 작성을 위한 데이터 준비
head(newdata)
plot(newdata, pch=16, col="blue",   # 산점도를 통해 변수 간 관계 확인
     main="Matrix Scatterplot")
pairs(newdata)

mod1 <- lm(income ~ education + prestige + women, # 회귀식 도출
           data=newdata)

# Pr(>|t|): t-검정의 p-value. 계수 추정치가 통계적으로 유의한지 확인
# **Pr(>|t|)**
# 회귀 계수의 t-검정 결과에서 계산된 p-value로, 
# 독립 변수가 종속 변수에 통계적으로 유의한 영향을 
# 미치는지 확인하는 지표입니다. 값이 작을수록 해당 변수는 
# 통계적으로 유의미하다고 해석할 수 있습니다.

# Adjusted R-squared (수정된 결정계수): 0.6323
# 독립 변수들이 종속 변수의 변동성을 약 63.23% 설명.

# F-statistic 값이 클수록 독립 변수들이 종속 변수에 
# 유의미한 영향을 미칠 가능성이 높아집니다.
# p-value < 0.05를 통해 더 직관적으로 귀무가설 기각 여부를 판단
# p-value (< 2.2e-16): 모델 전체가 통계적으로 유의함 
# (독립 변수들이 종속 변수에 유의미한 영향을 미침)
summary(mod1)

# 주석처리: ctrl + shift + c 
