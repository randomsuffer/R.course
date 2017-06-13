
####### one #######
x <- 1
rm(x)

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

# hometask: download from finam.ru in txt, remove dots from volume column, save result in csv
# learn about quantmod package and cat function

df <- read.table('lesson 5.txt', sep = ';', dec = '.', header = TRUE, stringsAsFactors = F)
df <- df[,-c(1,2)]
colnames(df) <- c('Date', 'Time', 'Open', 'High', 'Low', 'Close', 'Volume')

df$Time[df$Time == 0] <- '000000'
df$Date <- as.POSIXct(paste(df$Date, df$Time), format = c('%Y%m%d %H%M%S'))
df <- df[,-2]
df$Open <- as.numeric(gsub('\\.', '', df$Open)) / 10000000
df$High <- as.numeric(gsub('\\.', '', df$High)) / 10000000
df$Low <- as.numeric(gsub('\\.', '', df$Low)) / 10000000
df$Close <- as.numeric(gsub('\\.', '', df$Close)) / 10000000
df$Volume <- as.numeric(gsub('\\.', '', df$Volume))

head(df, 20)

write.csv(df, 'lesson 5.csv')

library(quantmod)
getSymbols('MSFT',src='yahoo')
head(MSFT)


