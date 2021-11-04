library(tidyverse)
gapminder <- read_csv("https://gge-ucd.github.io/R-DAVIS/data/gapminder.csv")
gapmindernew <- gapminder %>% group_by(continent, year) %>% summarise(avglifeExp = mean(lifeExp)) 
##keep getting error when I try to pipeline the plot creation: "Mapping should be created with 'aes()'"  
ggplot(gapmindernew, aes(x = year, y = avglifeExp)) +
  geom_point(aes(color = continent), size = .25) 
##playing around with code
ggplot(gapmindernew, aes(x = year, y = avglifeExp)) +
  geom_point(aes(color = continent), size = .25) +
  scale_x_log10()
##am I doing this wrong? Seeing no difference with the scale

ggplot(gapmindernew, aes(x = year, y = avglifeExp)) +
  geom_point(aes(color = continent), size = .25) +
  scale_x_log10() +
  geom_smooth(method = 'lm', color = 'black', linetype = 'dashed')
##is geom_smooth just an averaged trendline?

gapminder_c <- c("Brazil", "China", "El Salvador", "Niger", "United States")
head(gapminder_c)
