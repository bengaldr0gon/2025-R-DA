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
