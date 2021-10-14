surveys <- read.csv("data/portal_data_joined.csv")
head(surveys)
surveys_base <- surveys[c('species_id','weight','plot_type')]
surveys_base <- surveys_base[1:60,]
surveys_base$species_id <- as.factor(surveys_base$species_id)
str(surveys_base)
surveys_base$plot_type <- as.factor(surveys_base$plot_type)
surveys_base$weight <- na.omit(surveys_base$weight)
head(surveys_base)
