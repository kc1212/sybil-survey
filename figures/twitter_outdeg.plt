#
# Out-degree Distribution. G(3248093, 6063011). 336702 (0.1037) nodes with out-deg > avg deg (3.7), 119743 (0.0369) with >2*avg.deg (Thu Dec 15 16:22:58 2016)
#

# set title "Out-degree Distribution. G(3248093, 6063011). 336702 (0.1037) nodes with out-deg > avg deg (3.7), 119743 (0.0369) with >2*avg.deg"
set key top right
set logscale xy 10
set format x "10^{%L}"
set mxtics 10
set format y "10^{%L}"
set mytics 10
set grid
set xlabel "Out-degree"
set ylabel "Frequency"
set tics scale 2
set yrange[1.000000:]
set terminal pdf enhanced font 'Helvetica,16' # size 1000,800
set output 'twitter_outdeg.pdf'
plot    "twitter_outdeg.tab" using 1:2 title "Degree distribution" with points pt 1,\
        f1(x)=47567674.538042*x**-3.921018, f1(x) title "5e+07 * x^{-3.92},  R^2 = 0.86" with lines linewidth 2
