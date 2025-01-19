library(MASS)                           # stepAIC() 함수 제공

str(Prestige)
newdata2 <- Prestige[,c(1:5)]           # 모델 구축에 사용할 데이터셋 생성
head(newdata2)

mod2 <- lm(income ~ education + prestige + women + census, 
           data= newdata2)

summary(mod2)


####################
# (1) 첫 번째 단계: 초기 모델 (AIC=1607.93)
# 초기 모델: income ~ education + prestige + women + census
# 각 변수에 대해 제거했을 때의 결과를 평가.
# **<none>**은 현재 모델을 유지한 경우의 AIC 값입니다 (AIC=1607.93).
# 변수 제거 시 AIC 변화:
# - census: RSS가 감소 (AIC=1606.0). AIC가 줄어들므로 census를 제거.
# - education: AIC=1606.8로 약간 감소. education은 아직 유지.
# - prestige, - women: AIC가 크게 증가. 두 변수는 중요하므로 유지.
# 결론: census 변수를 제거하고, 다음 단계로 이동합니다.
#
# (2) 두 번째 단계: 변수 census 제거 후 (AIC=1606.03)
# 새로운 모델: income ~ education + prestige + women
# 다시 각 변수에 대해 제거 시 AIC 변화를 평가.
# 변수 제거 시 AIC 변화:
# - education: RSS가 약간 증가 (AIC=1605.0). 
#              AIC가 줄어들므로 education 제거.
# - prestige, - women: AIC가 크게 증가. 두 변수는 유지.
# 결론: education 변수를 제거하고, 다음 단계로 이동합니다.
# 
# (3) 세 번째 단계: 변수 education 제거 후 (AIC=1604.96)
# 새로운 모델: income ~ prestige + women
# 이 모델이 현재 최적 상태로 판단.
# 변수 제거 시 AIC 변화:
#   - prestige: RSS가 크게 증가 (AIC=1685.1). 유지.
# - women: RSS가 크게 증가 (AIC=1634.2). 유지.
# 결론: 추가로 제거할 변수가 없으므로 
#       최적 모델은 income ~ prestige + women으로 결정됩니다.

mod3 <- stepAIC(mod2)                   # 변수 선택 진행
mod3                                    # 변수 선택 후 결과 확인

summary(mod3)                           # 회귀모델 상세 내용 확인


###################
# 위와 동일
mod2 <- lm(income ~ ., 
           data= newdata2)

summary(mod2)

