library(ggvis)

d <- read.csv(file="/home/eugene/Документы/RingCentral/SVN/Docker/ADS/CSS/tests/jmeter/logs/lat-put.csv",head=TRUE,sep=",")

plot(d$timeStamp, d$Latency, type="l", col="red" )
#par(new=TRUE)
#plot( x, y2, type="l", col="green" )