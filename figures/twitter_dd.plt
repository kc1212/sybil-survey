#
# Degree Distribution. G(3248093, 6062427). 336955 (0.1037) nodes with out-deg > avg deg (3.7), 120075 (0.0370) with >2*avg.deg (Tue Dec  6 13:19:58 2016)
#

# set title "Degree Distribution. G(3248093, 6062427). 336955 (0.1037) nodes with out-deg > avg deg (3.7), 120075 (0.0370) with >2*avg.deg"
set key top right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Degree"
set ylabel "Count"
set tics scale 2
set terminal pdf enhanced font 'Helvetica,16' # size 1000,800
set output 'twitter_dd.pdf'
set yrange [1:2000000]

p(x) = a * (x ** k)
a = 2000000
k = -2
fit p(x) "twitter_dd.tab"  using 1:2 via a, k

plot    "twitter_dd.tab" using 1:2 title "degree distribution" with points pt 1, \
        p(x) title sprintf("p(x) = ax^{k}, a = %.2f, k = %.2f", a, k) with line
