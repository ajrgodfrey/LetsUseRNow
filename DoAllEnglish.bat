call MakeEnglishFiles.bat

call KnitLURN.bat
call LatexLURN.bat
call pdfLURN.bat

call JustSweaveLURN.bat

call rename1.bat
call html.bat

call rename2.bat
call HTMLBlind.bat

call CleanUpFolder.bat

move lurnPrint.pdf .\English\lurnPrint.pdf

CrossLinks.jar
