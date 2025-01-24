library(ggplot2)

# ggplot(data, aes(x, y)) +
#   geom_point() +
#   facet_wrap(~ 변수)

# mpg 데이터에서 자동차 종류(drv)에 따라 플롯을 나누기
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_wrap(~ drv)

# ggplot(data, aes(x, y)) +
#   geom_point() +
#   facet_grid(행_변수 ~ 열_변수)

# cyl(실린더 수)와 drv(구동 방식)에 따라 데이터 나누기
ggplot(mpg, aes(displ, hwy)) +
  geom_point() +
  facet_grid(cyl ~ drv)
