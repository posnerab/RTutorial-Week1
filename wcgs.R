# library(tidyverse)
# library(readr)
# library(epitools)
# library(markdown)

wcgs <- read_csv("wcgs_data.csv", col_names = TRUE)
wcgs_new <- read_csv("wcgs_data_new.csv", col_names = TRUE)
levels(wcgs_new$dibpat0) <- c("A", "B")
