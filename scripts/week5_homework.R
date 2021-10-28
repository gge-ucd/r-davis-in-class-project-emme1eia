library(tidyverse)
library(dplyr)
surveys <- read_csv('data/portal_data_joined.csv')
head(surveys)
surveys_wide <- surveys %>% group_by(genus,plot_type) %>% filter(!is.na(hindfoot_length)) %>% summarise(avg_hindfoot = mean(hindfoot_length))
?pivot_wider
surveys_wide <- surveys_wide %>% pivot_wider(names_from = plot_type, values_from = avg_hindfoot) %>% arrange(Control)
head(surveys_wide)
summary(surveys$weight)
?ifelse
surveys_new <- surveys %>% mutate(weight_cat = ifelse(surveys$weight<20,"small", ifelse(weight>20 & weight<48,"medium","large")))
surveys_new <- surveys_new %>% filter(!is.na(weight))
head(surveys_new$weight_cat)                                  
head(surveys_new$weight)