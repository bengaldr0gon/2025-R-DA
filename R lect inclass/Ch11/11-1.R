str(cars)
head(cars)
plot(dist~speed, data=cars)    # 산점도를 통해 선형 관계 확인
plot(cars$speed, cars$dist)    # 산점도를 통해 선형 관계 확인

# lm: linear model
# 종속변수 ~ 독립변수
model <- lm(dist~speed, cars)  # 회귀모델 구하기
model

abline(model)                  # 회귀선을 산점도 위에 표시
coef(model)
coef(model)[1]                 # b 값 출력, 절편
coef(model)[2]                 # W 값 출력, 계수

############################
model[1] # 절편과 계수
model[2] # 잔차(실제[관측]값 - 예측값) 목록
class(model)

predict(model) # 예측값
# 잔차 (실제[측정]값 - 예측값) 직접 계산
cars[, 2] - predict(model) 
