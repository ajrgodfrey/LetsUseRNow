
SVG2Web= function(file=NULL){
if(is.null(file)){
file=list.files(pattern=".svg")
}
for(i in file){
NewFile = sub(".svg", ".html", i)
cat("<html>\n<body>\n", file=NewFile)
file.append(NewFile, i)
cat("\n</body>\n</html>", file=NewFile, append=TRUE)
cat(NewFile, "created.\n")
}
return(invisible(NULL))
}

setwd("SVGs")
SVG2Web()
