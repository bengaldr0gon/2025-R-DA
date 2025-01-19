head(mtcars)
mosaicplot(~gear+vs, data = mtcars, color=TRUE, 
           main ="Gear and Vs")
mosaicplot(~gear+vs, data = mtcars, color=c("green","blue"),
           main ="Gear and Vs")

tbl = table(mtcars$gear, mtcars$vs)
mosaicplot(tbl, color=c("green","blue"),
           main ="Gear and Vs")

#########################################
# 데이터셋 로드
data(UCBAdmissions)

# 데이터셋 구조
str(UCBAdmissions)

# 차원 이름 확인
dimnames(UCBAdmissions)

head(UCBAdmissions)
ucb <- UCBAdmissions
ucb[,,'A']

mosaicplot(~Gender+Admit, data = UCBAdmissions, color=TRUE, 
           main ="UC Berkeley Admissions")
mosaicplot(~Gender+Admit, data = UCBAdmissions, color=c("red","gray"), 
           main ="UC Berkeley Admissions")
