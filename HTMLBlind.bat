htlatex LURNBlind.tex "xhtml,2,next,mathjax"

echo body{font-family: arial, helvetica, sans-serif;} >> LURNBlind.css

del LURNBlind.4ct
del LURNBlind.4tc
del LURNBlind.aux
del LURNBlind.dvi
del LURNBlind.tmp
del LURNBlind.lg
del LURNBlind.log
del LURNBlind.idx
del LURNBlind.idv
del LURNBlind.xref

copy LURNBlind.html Front.html

del .\LURNBlind\*.* /q

move *.png .\LURNBlind
move *.html .\LURNBlind
move LURNBlind.css .\LURNBlind

copy .\LURN\Ozone-UniDesc.html .\LURNBlind
