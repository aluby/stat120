ceo_salaries = read_csv("https://math.carleton.edu/aluby/stat120/ceo_salaries_23_24.csv")

ceo_salaries %>%
  mutate(
    Year = parse_number(str_trim(Year)),
    Pay = parse_number(str_remove(`CEO Pay`, "\\$"))
  ) %>%
  select(Year, Ticker, Company, CEO, Pay) %>%
  write_csv("ceo_salaries_23_24.csv")

