htlatex LURN.tex "html,2,next"

echo body{font-family: arial, helvetica, sans-serif;} >> LURN.css

del LURN.4ct
del LURN.4tc
del LURN.aux
del LURN.dvi
del LURN.tmp
del LURN.lg
del LURN.log
del LURN.idx
del LURN.idv
del LURN.xref

copy LURN.html Front.html
copy LURN.html index.html

del .\LURN\*.* /q

move *.png .\LURN
move *.html .\LURN
move LURN.css .\LURN
