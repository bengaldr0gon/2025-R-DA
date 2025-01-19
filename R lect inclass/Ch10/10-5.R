if (!require("arules")) {
  install.packages("arules")
}
library(arules)                 # 아프리오리 알고리즘

if (!require("arulesViz")) {
  install.packages("arulesViz")
}
library(arulesViz)              # 연관규칙 시각화 도구

# 데이터 불러오기와 관찰
# setwd("D:/source")
# R에서 폴더 구분자는 /와 \\ 사용 가능
getwd()
ds <- read.csv("Ch10/BreadBasket_DMS.csv")    # 거래 데이터 읽기
# 다음도 가능: \\이 필요
# ds <- read.csv("Ch10\\BreadBasket_DMS.csv")    # 거래 데이터 읽기
str(ds)
head(ds)
unique(ds$Item)

# 'NONE' item 삭제
ds.new <- subset(ds, Item != 'NONE')
write.csv(ds.new, "Ch10\\BreadBasket_DMS_upd.csv", row.names=F)

# 트랜잭션 포맷으로 데이터 읽기
# 인자, cols=list(c(transactionID, itemID))
trans <- read.transactions("Ch10\\BreadBasket_DMS_upd.csv", format="single", 
                           header=T, cols=c(3,4), sep=",", rm.duplicates=T)
trans                          # 트랜잭션 데이터 요약 정보

dimnames(trans)

dimnames(trans)[[2]]           # 상품 목록 확인
toLongFormat(trans)            # 거래별 상품 목록

inspect(head(trans, 10))       # 앞부분 10개 트랜잭션 출력
inspect(tail(trans, 10))       # 뒷부분 10개 트랜잭션 출력


