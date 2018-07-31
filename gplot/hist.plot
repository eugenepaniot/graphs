set datafile separator ","
set terminal pngcairo enhanced font "arial,12" fontscale 1.0 size 1680,1050
set size 1, 1
set output "graphs/histogram.png"
set key right top
set grid y

set auto x
unset xtics

set style histogram clustered gap 5
set style fill solid 1

set ylabel "response time distribution"

binwidth=500
bin(x,width)=width*floor(x/width) + binwidth/2.0


plot \
    "lat.csv"       using (bin($1,binwidth)+(binwidth/2)):(1.0) smooth freq with boxes
