#### Hands-on activities ####

#install.packages("tidyverse"))
install.packages("tidytuesdayR")

library(dplyr)
library(tidytuesdayR)
library(ggplot2)

pixar <- tidytuesdayR::tt_load(2025, week = 10)
films <- pixar$pixar_films
reception <- pixar$public_response

#### Data Transformation: dplyr ####
# Calculate average Metacritic score per cinema score rating
reception %>%
  group_by(cinema_score) %>%
  summarise(meanMetacritic = mean(metacritic))

# Create a new column flagging films with "high" vs. "low" Rotten Tomatoes ratings (x >= 90 or x < 90)
reception <- reception %>% mutate(rt = ifelse(rotten_tomatoes >= 90, 'High', 'Low'))
# and count the number of each
reception %>% count(rt)

#### Quick Visualisation: ggplot2 ####
#	Create a bar chart of Metacritic score of each film title
reception %>%
  ggplot(aes(x = film, y = metacritic)) +
  geom_col() +
  labs(title = "Film MC Score") +
  theme_minimal(base_size = 9)
