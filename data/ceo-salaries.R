ceo_salaries = read_csv("https://math.carleton.edu/aluby/stat120/ceo_salaries_23_24.csv")

ceo_salaries %>%
  mutate(
    Year = parse_number(str_trim(Year)),
    Pay = parse_number(str_remove(`CEO Pay`, "\\$"))
  ) %>%
  select(Year, Ticker, Company, CEO, Pay) %>%
  write_csv("ceo_salaries_23_24.csv")

# Source: https://dasl.datadescription.com/datafile/ceo-compensation-2024/
ceo_salaries_2024 <- read_delim("~/Downloads/ceo-compensation-2024.txt") |>
  mutate(
    ceo_comp = `Compensation ($M)`*1000000
  ) |>
  select(
    ticker = Ticker,
    company = Company,
    worker_pay = `Median worker pay`,
    ceo_comp
  )

ggplot(ceo_salaries_2024, aes(x = worker_pay, y = ceo_comp/1000000)) + 
  geom_point() +
  geom_smooth()
