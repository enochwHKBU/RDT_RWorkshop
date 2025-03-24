#install.packages("tidyverse"))
install.packages("tidytuesdayR") # Uncomment if not already installed

# Load the required libraries for data manipulation and visualisation
library(dplyr)         # For data manipulation
library(tidytuesdayR)  # For accessing TidyTuesday datasets
library(ggplot2)       # For creating visualisations

pixar <- tidytuesdayR::tt_load(2025, week = 10) # Load the Pixar dataset for the year 2025, week 10

# Extract the 'pixar_films' and 'public_response' datasets from the loaded data
films <- pixar$pixar_films
reception <- pixar$public_response

films %>% View() # View the 'films' dataset in a spreadsheet-like viewer

films %>% glimpse() # Get a quick overview of the structure of the 'films' dataset

films %>% slice_head(n = 2) # Display the first two rows of the 'films' dataset

films %>% slice_max(run_time, n = 2) # Display the films with the 2 longest runtime

reception %>% View() # View the 'reception' dataset in a spreadsheet-like viewer

# Add a new column to the 'reception' dataset that calculates the mean score
# based on Rotten Tomatoes, Metacritic, and Critics Choice scores
reception <- reception %>% mutate(mean = (rotten_tomatoes + metacritic + critics_choice)/3)

count(films, films$film_rating) # Count the number of films for each film rating in the 'films' dataset

films %>% summarise(uniqueRating = n_distinct(film_rating, na.rm = F)) # Calculate the number of unique film ratings in the 'films' dataset

films %>%
  group_by(film_rating) %>% # Group the 'films' dataset by film rating
  summarise(meanRunTime = mean(run_time)) # and calculate the mean runtime for each rating

films %>%
  mutate(longFilm = ifelse(run_time >= 100, TRUE, FALSE)) %>% # Add a new column to the 'films' dataset to indicate whether a film is long (runtime >= 100 minutes)
  count(longFilm) # and count the number of long and short films

# Create a bar chart showing the runtime of each film
film2 <- str_wrap(films$film, width = 13)  # # Wrap text to no more than 13 spaces to fit the chart
films %>%
  ggplot(aes(x = film2, y = run_time)) +  # Map film names to x-axis and runtime to y-axis
  geom_col() +                          # Use a column chart (by value)
  labs(title = "Film Run Time") +       # Add a title to the chart
  scale_x_discrete(guide = guide_axis(n.dodge = 2)) + # Adjust the x-axis labels
  theme_minimal(base_size = 9)          # Use a minimal theme with a base font size of 9

# Create a bar chart showing the distribution of cinema scores in the 'reception' dataset
reception %>%
  ggplot(aes(x = cinema_score)) +       # Map cinema scores to the x-axis
  geom_bar() +                          # Use a bar chart (by occurrence)
  labs(title = "Film Scores") +         # Add a title to the chart
  theme_minimal()          # Use a minimal theme

reception %>% write_csv("~/receptionNew.csv") # Save the transformed data in csv format
