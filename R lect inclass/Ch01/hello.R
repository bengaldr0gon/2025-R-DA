getwd()
library()

5 + 8
3 + (4*5)
a <- 10
print(a)
a = 20
print(a)

# 설치된 패키지 목록 확인
installed.packages()

# 현재 메모리에 올린 패키지 목록
library()

# 패키지 설치
install.packages("ggplot2")

# 설치된 패키지를 로드하려면:
library(ggplot2)

# 설치된 패키지를 메모리에서 내리려면:
detach("package:ggplot2")

# 설치된 패키지 삭제
# remove.packages("ggplot2")
