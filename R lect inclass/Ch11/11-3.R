speed <- cars[,1]                   # 주행속도
pred <- W * speed + b
pred                                # 예상 제동거리

compare <- data.frame(pred, cars[,2], pred-cars[,2])
compare

colnames(compare) <- c('예상','실제','오차')
head(compare)

########################################
-compare[,3]
res <- model[2]$residuals # 잔차(실제[관측]값 - 예측값) 목록
as.vector(res)
