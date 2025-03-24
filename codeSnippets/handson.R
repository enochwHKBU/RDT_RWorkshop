#### Keys to hands-on activities ####

#### Prerequisites ####
# Install the 'tidytuesdayR' package, which provides access to TidyTuesday datasets
install.packages("tidytuesdayR")

# Load the required libraries for data manipulation and visualisation
library(dplyr)         # For data manipulation
library(tidytuesdayR)  # For accessing TidyTuesday datasets
library(ggplot2)       # For creating visualisations

pixar <- tidytuesdayR::tt_load(2025, week = 10) # Load the Pixar Films dataset for the year 2025, week 10

# Extract the 'pixar_films' and 'public_response' datasets from the loaded data
films <- pixar$pixar_films
reception <- pixar$public_response

#### Data Transformation: dplyr ####
# Group the 'reception' dataset by 'cinema_score' and calculate the average Metacritic score for each group
reception %>%
  group_by(cinema_score) %>% # Group data by cinema score
  summarise(meanMetacritic = mean(metacritic, na.rm = T)) # Calculate the mean Metacritic score for each group, ignoring the NA values

# Add a new column to the 'reception' dataset to classify films as "High" or "Low" based on Rotten Tomatoes ratings
reception <- reception %>% 
  mutate(rt = ifelse(rotten_tomatoes >= 90, 'High', 'Low')) # If Rotten Tomatoes score is 90 or higher, label as 'High'; otherwise, 'Low' in column 'rt'

reception %>% count(rt) # Count the number of films in each "High" or "Low" category

#### Quick Visualisation: ggplot2 ####
# Create a bar chart showing the Metacritic score for each film title
film2 <- str_wrap(reception$film, width = 13)  # Wrap text to no more than 13 spaces to fit the chart
reception %>%
  ggplot(aes(x = film2, y = metacritic)) + # Map film titles to the x-axis and Metacritic scores to the y-axis
  geom_col() + # Use a bar chart to represent the data
  labs(title = "Film MC Score") + # Add a title to the chart
  scale_x_discrete(guide = guide_axis(n.dodge = 2)) + # Adjust the x-axis labels
  theme_minimal(base_size = 9) # Apply a minimal theme with a base font size of 9
