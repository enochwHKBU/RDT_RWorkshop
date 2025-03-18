#install.packages("tidyverse"))
install.packages("tidytuesdayR")

library(dplyr)
library(tidytuesdayR)
library(ggplot2)

pixar <- tidytuesdayR::tt_load(2025, week = 10)
films <- pixar$pixar_films
reception <- pixar$public_response

films %>% View()
films %>% glimpse()
films %>% slice_head(n = 2)
films %>% slice_max(run_time, n = 2)

reception %>% View()
reception <- reception %>% mutate(mean = (rotten_tomatoes + metacritic + critics_choice)/3)
count(films, films$film_rating)
films %>% summarise(uniqueRating = n_distinct(film_rating, na.rm = F))
films %>%
  group_by(film_rating) %>%
  summarise(meanRunTime = mean(run_time))
films %>% mutate(longFilm = ifelse(run_time >= 100, TRUE, FALSE)) %>% count(longFilm)

films %>%
  ggplot(aes(x = film, y = run_time)) +
  geom_col() +
  labs(title = "Film Run Time") +
  theme_minimal(base_size = 9)

reception %>%
  ggplot(aes(x = cinema_score)) +
  geom_bar() +
  labs(title = "Film Scores") +
  theme_minimal(base_size = 9)

