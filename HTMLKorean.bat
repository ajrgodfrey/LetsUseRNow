htlatex LURN.tex "xhtml,2,next,charset=utf-8"

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

del .\LURN\*.* /q

move *.png .\LURN
move *.html .\LURN
move LURN.css .\LURN
