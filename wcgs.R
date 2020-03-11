library(epitools)
library(tidyverse) # helps us make charts and graphics
library(rmarkdown)
library(DescTools)

wcgs <- read_csv("wcgs_data.csv", col_names = TRUE)
wcgs_new <- read_csv("wcgs_data_new.csv", col_names = TRUE)

wcgs_new$dibpat0_fact <- as.factor(wcgs_new$dibpat0)
levels(wcgs_new$dibpat0_fact) <- c("A","B")

wcgs_new$highsbp0 <- factor(wcgs_new$highsbp0, labels = c("normal sbp", "high sbp"))
