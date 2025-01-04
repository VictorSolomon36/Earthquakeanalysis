quakes<-datasets::quakes

head(quakes,13)

tail(quakes,14)

quakes[1,2,c(1)]

quakes[,c(1,2,3)]

df<-quakes[,-3] #except 3rd column all the other are sorted in df

quakes$depth

summary(quakes$mag)

summary(quakes)

plot(quakes$depth)

plot(quakes$depth, quakes$mag)

plot(quakes$depth, quakes$mag, type = 'l')

plot(quakes$depth, xlab = 'depth of earthquake', ylab = 'no of instances', main = 'The Earthquake', col = 'blue')

hist(quakes$mag)

hist(quakes$stations)

hist(quakes$stations, main = 'stations affected', xlab = 'no of stations', col ='green')

boxplot(quakes$mag, main = 'Magnitude of Earthquakes')

boxplot.stats(quakes$mag)$out

boxplot(quakes[,1:5], main = 'All')

par(mfrow=c(2,4), mar=c(2,5,2,1), las=0, bty ="o")

plot(quakes$mag)
plot(quakes$mag, quakes$depth)
plot(quakes$depth, type= "l")
plot(quakes$depth, type= "p")
barplot(quakes$stations, main = 'No of stations affected', xlab ='frequency', horiz = FALSE, col = 'blue')
hist(quakes$mag)
boxplot(quakes$depth)
boxplot(quakes[,1:4], main = 'multiple boxplots')

