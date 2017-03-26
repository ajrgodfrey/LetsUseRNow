library(knitr)
render_latex()
library(rvg)
opts_chunk$set(comment=NA, prompt=T, dev=c('pdf','postscript'
,'dsvg'), fig.ext=c('pdf', 'eps', 'svg'
)) 
