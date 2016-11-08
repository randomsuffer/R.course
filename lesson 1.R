rm(list = ls()) #очистить workspace
cat("\014") #очистить консоль

x <- c('10', '23', 'ten')
x <- as.numeric(x)
x[is.na(x)] <- 0
x[x < 1] <- 1

