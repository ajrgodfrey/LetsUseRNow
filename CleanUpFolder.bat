del *.bak
del *.ps

del "lurnPrint.log"
del *.aux
del *.idx
del "lurnPrint.tex.bak"
del *.toc
del "lurn*.out"
del *.dvi
del "lurn*.ind"
del "lurn*.ilg"
del "Rplots.pdf"


move *.tex .\TexFiles

move .\Figures\*.svg .\SVgs

del lurn.txt
del .\figures\*.* /q
del LURNWorkhorse.R
del LURNWorkhorse.Rout

del .\Ozone\*.* /q
del Ozone*.Rmd
rd Ozone
rd Tables
rd Figures
rd Data

del *.Rnw
