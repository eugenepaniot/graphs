require(plotrix)

d <- read.csv(file="/home/eugene/Документы/RingCentral/SVN/Docker/ADS/CSS/tests/jmeter/logs/lat-put.csv",head=TRUE,sep=",")

hist(d$Latency,
     breaks=30,
     xlab="ms",
     ylab="count",
     freq=TRUE,
     plot = TRUE,
     labels = TRUE,
     ylim=c(0, 2000)
     )