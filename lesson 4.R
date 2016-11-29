AirPassengers
UKgas
mtcars
WorldPhones

plot(as.vector(AirPassengers), type = 'l')

plot(mtcars$wt, mtcars$hp, xlab = 'weight', ylab = 'horse power')
abline(lm(mtcars$hp~mtcars$wt))
title('Regression of horse power on weight')

df <- table(mtcars$qsec)
df <- table(round(mtcars$qsec))
barplot(df, main="1/4 mile time car distribution", xlab="Number of cars")

lbls <- c('North America', 'Europe', 'Asia', 'South America', 'Oceania', 'Africa', 'Middle America')
pie(WorldPhones["1951",], labels = lbls, main = "Pie Chart of Countries")

df2 <- as.data.frame(matrix(UKgas, ncol = 4))
colnames(df2) <- c('Qtr1', 'Qtr2', 'Qtr3', 'Qtr4')
rownames(df2) <- c(1960:1986)

barplot(df2, main = "Car Distribution by Gears and VS",
        xlab = "Number of Gears",
        # col = c('lightblue', 'mistyrose', 'lightcyan', 'lavender'),
        legend = rownames(df2))

# hometask
# plot axis labels, pie chart size, stacked bar chart