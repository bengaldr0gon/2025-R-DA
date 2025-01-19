# ch08-sect2.R

# 8-5.R
library(ggplot2)

month <- c(1,2,3,4,5,6)
rain <- c(55,50,45,50,60,70)
df <- data.frame(month,rain)         # 그래프를 작성할 대상 데이터
df

# https://ggplot2.tidyverse.org/
ggplot(df, aes(x=month, y=rain)) +   # 그래프를 그릴 데이터 지정
  geom_bar(stat="identity",          # 막대의 높이는 y축에 해당하는 열의 값
           width=0.7,                # 막대의 폭 지정
           fill="steelblue")         # 막대의 색 지정

ggplot(mpg, aes(displ, hwy, colour = class)) + 
  geom_point()

# 8-6.R
ggplot(df, aes(x=month,y=rain)) +         # 그래프를 그릴 데이터 지정
  geom_bar(stat="identity",               # 막대 높이는 y축에 해당하는 열의 값
           width=0.7,                     # 막대의 폭 지정
           fill="steelblue") +            # 막대의 색 지정
  ggtitle("월별 강수량") +                # 그래프의 제목 지정
  theme(plot.title = element_text(size=25, face="bold", colour="steelblue")) +
  labs(x="월",y="강수량") +               # 그래프의 x, y축 레이블 지정
  coord_flip()                            # 그래프를 가로 방향으로 출력

ggplot(df, aes(x=month,y=rain)) +         # 그래프를 그릴 데이터 지정
  geom_bar(stat="identity",               # 막대 높이는 y축에 해당하는 열의 값
           width=0.7,                     # 막대의 폭 지정
           fill="wheat") +                # 막대의 색 지정
  ggtitle("월별 강수량") +                # 그래프의 제목 지정
  theme(plot.title = element_text(size=25, face="bold", colour="steelblue")) +
  labs(x="월",y="강수량")                 # 그래프의 x, y축 레이블 지정

# 8-7.R
library(ggplot2)

ggplot(iris, aes(x=Petal.Length)) +    # 그래프를 그릴 데이터 지정
  geom_histogram(binwidth=0.5)         # 히스토그램 작성

ggplot(iris, aes(x=Petal.Length)) +    # 그래프를 그릴 데이터 지정
  geom_histogram(binwidth=1)           # 히스토그램 작성

# 8-8.R
library(ggplot2)

ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) + 
  geom_histogram(binwidth = 0.5, position="dodge") + 
  theme(legend.position="top")

ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) + 
  geom_histogram(binwidth = 0.5, position="stack") + 
  theme(legend.position="top")

ggplot(iris, aes(x=Sepal.Width, fill=Species, color=Species)) + 
  geom_histogram(binwidth = 0.5, position="dodge") + 
  theme(legend.position="left")

ggplot(iris, aes(x=Sepal.Width)) + 
  geom_histogram(binwidth = .5) + 
  theme(legend.position="top")

# 8-9.R
library(ggplot2)

ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width)) + 
  geom_point()

# 8-10.R
library(ggplot2)

ggplot(data=iris, aes(x=Petal.Length, y=Petal.Width, color=Species)) +
  geom_point(size=3) +
  ggtitle("꽃잎의 길이와 폭") +              # 그래프의 제목 지정
  theme(plot.title = element_text(size=25, face="bold", colour="steelblue"))

# 8-11.R
library(ggplot2)

ggplot(data=iris, aes(y=Petal.Length)) + 
  geom_boxplot(fill="yellow") 

# 8-12.R
library(ggplot2)

ggplot(data=iris, aes(y=Petal.Length, fill=Species)) + 
  geom_boxplot() 

str(iris)
boxplot(iris$Petal.Length ~ iris$Species, iris, 
        col = c("lightgray", "yellow", "skyblue"))

# 8-13.R
library(ggplot2)

airmiles
year <- 1937:1960
cnt <- as.vector(airmiles)
df <- data.frame(year,cnt)             # 데이터 준비
head(df)

ggplot(data=df, aes(x=year,y=cnt)) +   # 선그래프 작성
  geom_line(col="red")

plot(airmiles)
