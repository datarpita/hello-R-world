data("mtcars")
?mtcars
names(mtcars)
table(mtcars$cyl,mtcars$gear)
xtabs(~mtcars$cyl+mtcars$gear)
xtabs(mtcars$mpg~mtcars$cyl+mtcars$gear)



moviedata <- read.csv("D:/Arpita/Tutorials/R/Movie List.csv")
names(moviedata)

# Find the top 2 movies in the movie list dataset as seen from bottom 6
sortedbyrating <- moviedata[order(moviedata$imdb_rating), ]
sortedbyrating
bottom6movies <- tail(moviedata)
bottom6movies
index <- order(-bottom6movies$imdb_rating)
index
sortedbottom6movies <- bottom6movies[index, ]
sortedbottom6movies[c(1,2),]

# The worldwide_gross feature is of type
summary(moviedata)
class(moviedata$worldwide_gross)

# The top 3 movies that ruled the box office world wide in 2001
moviesin2001 <- moviedata[moviedata$year == 2001,]
sortedmoviesin2001 <- moviesin2001[order(-moviesin2001$worldwide_gross), ]
top3sortedmoviesin2001 <- sortedmoviesin2001[c(1:3),]


class(moviedata$title)
