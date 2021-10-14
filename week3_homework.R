surveys <- read.csv("data/portal_data_joined.csv")
head(surveys)
surveys_base <- surveys[1:60, c(6,9,13)]
head(surveys_base)
surveys_base$species_id <- as.character(surveys_base$species_id)
str(surveys_base)
surveys_base$plot_type <- as.character(surveys_base$plot_type)
surveys_base$weight <- surveys_base$weight(x, na.rm=TRUE)
surveys_base <- surveys_base[complete.cases(surveys_base),]
head(surveys_base)
