library(readr)
library(janitor)

# load data --------------------------------------------------------------------------

demo <- read_csv(here::here("data-raw/demo/demo.csv"))

# cleaning: clean names using janitor

demo <- demo %>% 
  clean_names()

# Save -------------------------------------------------------------------------------

usethis::use_data(demo, overwrite = TRUE)
