survey = googlesheets4::read_sheet("https://docs.google.com/spreadsheets/d/1Svn_Ag2gOKlYRABCVJnR1MSCh2uENoUW9hjeLCdQuV8/edit?usp=sharing")

survey |>
  janitor::clean_names() |>
  select(coffee_or_tea, what_kind_of_background_noise_do_you_prefer_while_studying) |>
  table()

survey |>
  janitor::clean_names() |>
  select(coffee_or_tea, what_is_your_class_year) |>
  table() |>
  knitr::kable()
