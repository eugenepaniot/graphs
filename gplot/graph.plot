set datafile separator ","
set terminal pngcairo enhanced font "arial,12" fontscale 1.0 size 1680,1050
set size 1, 1
set output "graphs/timeseries.png"
set title "Benchmark testing"
set key right top
set grid y
set xdata time
set timefmt "%s"
#set format x "%10.3f"
set format x "%m/%d %H:%M:%S"
set xlabel 'seconds'
set ylabel "response time (ms)"

plot \
    "lat.csv"       using 0:3 title 'get' with linespoint, \
    "lat-put.csv"   using 0:3 title 'put' with linespoint
