library(googlesheets4)
library(tidyverse)
survey <- read_sheet("https://docs.google.com/spreadsheets/d/1OlyGzyCzvJx-VE4DYxSUtEQEugAdzpBGmTtTT6l-TzA/edit?usp=sharing")

survey_anon <- survey |>
  select(`Have you taken a statistics course before?`:`How familiar are you with the following tools: [Excel]`)
write_csv(survey_anon, "data/survey_anon.csv")
