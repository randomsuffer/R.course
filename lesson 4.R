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

# hometask
# plot y axis labels, pie chart size, stacked bar chart of df2

barplot(df, main="1/4 mile time car distribution", xlab="Number of cars",
        ylim = c(0,max(df)), axes = F)
axis(2,seq(0,max(df),1),seq(0,max(df),1))

pie(WorldPhones["1951",], labels = lbls, main = "Pie Chart of Countries", radius = 2)

df2 <- t(df2)
library(RColorBrewer)
clrs <- brewer.pal(4, "GnBu")
barplot(df2,
        col = clrs,
        main = "Quarterly UK gas consumption",
        xlab = "Years",
        ylab = "Millions of therms",
        xlim = c(0, ncol(df2) * 1.5),
        width = 1)
legend("bottomright", 
       legend = rownames(df2),
       fill = clrs,
       title = "Legend")
