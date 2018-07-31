library("ggplot2")

d <- read.csv(file="/home/eugene/Документы/RingCentral/SVN/Docker/ADS/CSS/tests/jmeter/logs/lat-put.csv", head=TRUE,sep=",")

interval_size <- '5 sec'
wanted_percentiles <- c(0.5, 0.9, 0.95, 0.99)

get_quantiles <- function(items) {
  yy <- quantile(items, wanted_percentiles)
  return (yy)
}

r <- aggregate(t ~ cut(ts, interval_size), d$V3, get_quantiles)
names(r) <- c("ts", "t")
df <- as.data.frame(r$t)
df$ts <- r$ts
df$threshold <- rep(300, length(df$ts))
df$ts <- as.POSIXct(df$ts)

