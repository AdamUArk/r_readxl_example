url <- "https://www.k-state.edu/pa/faculty/demographics/total/t2016.xlsx"

download.file(url, destfile = "t2016.xlsx",  mode = "wb")

library(readxl)

kansas_state <- read_xlsx("t2016.xlsx", skip = 165, col_names = FALSE, sheet = 'Totals')

gender <- kansas_state[1:4]
names(gender) <- c("COLLEGE", "N", "Male", "F")
gender
