# Example gnuplot file to plot this data
#

        set title 'Distance vs speed for each Last-Mile technology'
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
'adsl1.2' using 2:3  title 'adsl1',\
'adsl2.3' using 2:3  title 'adsl2',\
'adsl2+.2' using 2:3  title 'adsl2+ (DSL)',\
'vdsl2.5' using 2:3  title 'vdsl2 (FTTN, FTTdp)',\
'vdsl2.11' using 2:3  title 'vdsl2 17a vectored',\
'vdsl2.12' using 2:3  title 'vdsl2 35b super vectored',\
'gfast.14' using 2:3  title 'G.Fast A2 co-existing with VDSL2'

#'gfast.9' using 2:3  title 'G.Fast',\
#'gfast.10' using 2:3  title 'G.Fast vectored',\
#'gfast.13' using 2:3  title 'G.Fast A1 co-existing with VDSL2',\

pause mouse close

