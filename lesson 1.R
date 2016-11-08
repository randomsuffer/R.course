x <- 1
x <- c(10, 23, 'ten')
x <- as.numeric(x)

for(i in 1:length(x)) {
  if(is.na(x[i])) {
    x[i] <- 0
  }
  if(x[i] > 15 & x[i] < 25) {
    x[i] <- x[i] + 2
  }
  if(x[i] == 10 | x[i] == 1) {
    x[i] <- x[i] * 2
  }
}

x[is.na(x)] <- 0
x[x > 15 & x < 25] <- x[x > 15 & x < 25] + 2

# hometask:
#   изучить функции rep, length, seq,
#   if / else (больше, меньше, равно, не равно),
#   switch / case
