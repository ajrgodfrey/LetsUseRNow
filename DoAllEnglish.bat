call MakeEnglishFiles.bat

call KnitLURN.bat
call LatexLURN.bat
call pdfLURN.bat

call JustSweaveLURN.bat
ren lurnprint.aux lurn.aux
ren lurnprint.idx lurn.idx
ren lurnprint.toc lurn.toc
ren lurnprint.ind lurn.ind
call html.bat

ren lurn.aux LURNBlind.aux
ren lurn.idx LURNBlind.idx 
ren lurn.toc LURNBlind.toc 
ren lurn.ind LURNBlind.ind
call HTMLBlind.bat

call CleanUpFolder.bat

move lurnPrint.pdf .\English\lurnPrint.pdf
