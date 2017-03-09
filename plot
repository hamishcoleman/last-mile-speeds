# Example gnuplot file to plot this data
#

# To generate a pdf:
#set terminal pdf size 11,8
#set output 'internet-speeds.pdf'

# To generate svg:
#set terminal svg size 800,600 enhanced background rgb 'white'
#set output 'internet-speeds.svg'

        set title 'Distance vs speed for each Last-Mile technology'
        set xlabel 'Meters from Node'
        set ylabel 'Megabit/s'

        #set xtics out rotate by -15 86400
        set xtics out rotate by -15
        set mouse clipboardformat 5
        set grid ytics mytics lw 2, lw 1
        set grid xtics
        set autoscale fix

        set key right center Left title 'Legend' box 3

set yrange [0 to 110]

set style data lines

plot \
'gpon.0' using 2:3  title 'gpon (FTTP)',\
'adsl1.2' using 2:3  title 'adsl1',\
'adsl2.3' using 2:3  title 'adsl2',\
'adsl2+.2' using 2:3  title 'adsl2+ (DSL)',\
'vdsl2.5' using 2:3  title 'vdsl2 (FTTN, FTTdp)',\
'gfast.9' using 2:3  title 'gfast',\
'gfast.10' using 2:3  title 'gfast vectored'
pause mouse close

