library(tidyverse)
data <- read.csv("C:/Users/aoliv/OneDrive/Documents/GitHub/datafest-hackathon/stats.csv")

# Assuming your dataset is named 'super_bowl_data'
# Replace 'super_bowl_data' with the actual name of your dataset

# Calculate the mean for each statistic for the Super Bowl winners
mean_stats_winners <- data %>%
  filter(winner == "1") %>%
  summarize(
    mean_pass_completion = mean(pass_completion),
    mean_turnovers = mean(turnovers),
    mean_yards_per_attempt = mean(yards_per_attempt),
    mean_rushing_yards = mean(rushing_yards),
    mean_times_sacked = mean(times_sacked)
  )

# Calculate the mean for each statistic for teams that did not win the Super Bowl
mean_stats_losers <- data %>%
  filter(winner == "0") %>%
  summarize(
    mean_pass_completion = mean(pass_completion),
    mean_turnovers = mean(turnovers),
    mean_yards_per_attempt = mean(yards_per_attempt),
    mean_rushing_yards = mean(rushing_yards),
    mean_times_sacked = mean(times_sacked)
  )

# Print the mean statistics for winners and losers
print("Mean Statistics for Super Bowl Winners:")
print(mean_stats_winners)

print("Mean Statistics for Super Bowl Losers:")
print(mean_stats_losers)
