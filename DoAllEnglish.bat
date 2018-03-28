call MakeEnglishFiles.bat

call KnitLURN.bat
call LatexLURN.bat
call pdfLURN.bat

call JustSweaveLURN.bat

call rename1.bat
call html.bat

echo TRUE > AddBlind.txt
call JustSweaveLURN.bat

call rename2.bat
call HTMLBlind.bat

del AddBlind.txt
call CleanUpFolder.bat
move lurnPrint.pdf .\English\lurnPrint.pdf

CrossLinks.jar
