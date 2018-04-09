# Example gnuplot file to plot this data
#

        set title 'Distance vs speed for VDSL technology'
        set xlabel 'Meters from Node'
        set ylabel 'Megabit/s'

        #set xtics out rotate by -15 86400
        set xtics out rotate by -15
        set mouse mouseformat "%5.0f meters, %5.0f megabits"
        set grid ytics mytics lw 2, lw 1
        set grid xtics
        set autoscale fix

        set key right center Left title 'Legend' box 3

set xrange [0 to 3500]
set yrange [0 to 110]

set style data lines

plot \
'gpon.0' using 2:3  title 'gpon (FTTP)',\
'vdsl2.5' using 2:3 title '17a (probably unvectored)',\
'vdsl2.7' using 2:3 title 'unknown profile',\
'vdsl2.11' using 2:3 title '17a (vectored)',\
'vdsl2.12' using 2:3 title '35b (super vectoring)',\
'vdsl2.15.0x' using 2:3 title '0 crosstalkers',\
'vdsl2.15.1x' using 2:3 title '1 crosstalkers',\
'vdsl2.15.5x' using 2:3 title '5 crosstalkers',\
'vdsl2.15.20x' using 2:3 title '20 crosstalkers',\
'vdsl2.15.50x' using 2:3 title '50 crosstalkers'



pause mouse close

