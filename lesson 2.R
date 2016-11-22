x <- c(123, 4567)
x <- as.character(x)
x

length(x)
nchar(x)

message(nchar(x)[1])
paste('Length of 1st string is', nchar(x)[1], sep = ' ')

# date to string
now <- Sys.Date()
class(now)

# string to date
now <- paste(substr(now, 9, 10), substr(now, 6, 7), substr(now, 1, 4), sep = '/')
now <- as.Date(now, "%d/%m/%Y")

# string replacement
number <- '3511,3'
gsub(',', '.', number)
number <- as.numeric(gsub(',', '.', number))

# sort
people <- c('petya', 'masha', 'kolya', 'igorek')
people <- sort(people)

# hometask
# convert as.Date('2016-11-15') into as.character('Fifteenth November 16')

a <- as.Date('2016-11-15')
days <- c('first', 'second', 'third', 'fourth', 'fifth', 'sixth' , 'seventh',
          'eighth', 'ninth', 'tenth', 'eleventh', 'twelfth' , 'thirteenth',
          'fourteenth', 'fifteenth', 'sixteenth', 'seventeenth', 'eighteenth',
          'nineteenth', 'twentieth', 'twenty-first', 'twenty-second', 'twenty-third',
          'twenty-fourth', 'twenty-fifth', 'twenty-sixth', 'twenty-seventh',
          'twenty-eighth', 'twenty-ninth', 'thirtieth', 'thirty-first')

result <- paste(days[as.numeric(as.character(a, format='%d'))],
                as.character(a, format='%B %y'))




