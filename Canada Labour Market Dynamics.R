library(tidyverse)

data <- read.csv("1410028703_databaseLoadingData (October 2025).csv", stringsAsFactors = FALSE) %>%
  bind_rows(
    read.csv("1410028703_databaseLoadingData (October 2024).csv", stringsAsFactors = FALSE)
  ) %>%
  filter(!is.na(VALUE))

data <- data %>%
rename(Labour_char = all_of(grep("Labour", names(.), value = TRUE)[1]))

keep <- c("Population", "Employment rate", "Unemployment rate")

df <- data %>%
filter(Labour_char %in% keep) %>%
mutate(
REF_DATE = as.character(REF_DATE),
VALUE = as.numeric(VALUE),
Year = ifelse(grepl("2025", REF_DATE), 2025, 2024)) %>%
filter(REF_DATE %in% c("2025-10", "2024-10", "October 2025", "October 2024", "2025-10-01", "2024-10-01")) %>%
select(GEO, Labour_char, VALUE, Year)

growth <- df %>%
split(.$Year) %>%
{left_join(
.[['2025']] %>% select(GEO, Labour_char, VALUE) %>% rename(V2025 = VALUE),
.[['2024']] %>% select(GEO, Labour_char, VALUE) %>% rename(V2024 = VALUE),
by = c("GEO", "Labour_char"))} %>%
mutate(Growth = round((V2025 - V2024) / V2024 * 100,2))

growth_rate <- growth %>%
select(GEO, Labour_char, Growth) %>%
reshape(idvar = "GEO", timevar = "Labour_char", direction = "wide") %>%
rename_with(~ gsub("^Growth\\.", "Growth (%)_", .x)) %>%
arrange(GEO)

View(growth_rate)