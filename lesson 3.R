a <- 1:6
a <- rbind(a, 6:1)
colnames(a) <- c('russia', 'usa', 'france', 'vietnam', 'germany', 'india')
rownames(a) <- 1:2

b <- rnorm(6)
b <- matrix(b, ncol=2)
b <- t(b)

c <- matrix(nrow = 0, ncol = 2)
c <- rbind(c, rnorm(2))
c <- rbind(c, rnorm(2))
c <- rbind(c, rnorm(2))
c <- cbind(c, c)

a[1, 'vietnam']
a <- as.data.frame(a)
a$vietnam[1]

head(quakes)
tail(quakes)

Titanic[1,,,]

raw.data <- list(January=matrix(c(5,3,5,4,4,5), ncol = 2), February=matrix(c(5,4,5,4,4,4), ncol = 2))
rownames(raw.data[[1]]) <- rownames(raw.data[[2]]) <- c('vasya', 'petya', 'masha')
colnames(raw.data[[1]]) <- colnames(raw.data[[2]]) <- c('math', 'physics')

# hometask
# convert to panel data

panel.data <- matrix(nrow = 3*2*2, ncol = 4)
colnames(panel.data) <- c('date', 'name', 'subject', 'mark')
panel.data <- as.data.frame(panel.data)
panel.data$date <- c(rep('January', 6), rep('February', 6))
panel.data$name <- rep(rownames(raw.data[[1]]), 4)
panel.data$subject <- rep(c(rep(colnames(raw.data[[1]])[1], 3), rep(colnames(raw.data[[1]])[2], 3)), 2)
panel.data$mark <- c(as.vector(raw.data[[1]]), as.vector(raw.data[[2]]))

