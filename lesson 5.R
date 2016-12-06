
####### one #######
x <- 1
rm(X)

# clear workspace
rm(list = ls())
# clear console
cat("\014")
# save workspace
save.image()
# get and set working directory
getwd()
setwd()

####### two #######
df <- read.csv('usdrub.csv', sep = ';', dec = '.', header = TRUE)
df$X.DATE. <- as.Date(as.character(df$X.DATE.), '%Y%m%d')
df <- df[,-c(1,2,4)]
colnames(df) <- c('date', 'open', 'high', 'low', 'close', 'volume')
# df$volume <- gsub('{3}.{3}.{3}.{3}', '', df$volume)

# hometask: выгрузить с финама в txt, убрать точку из volume,
# сохранить в csv + изучить quantmod и cat