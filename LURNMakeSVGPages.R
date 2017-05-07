setwd("figures")

library(BrailleR)

SVG2Web= function(file=NULL){
if(is.null(file)){
file=list.files(pattern=".svg")
}
for(i in file){
NewFile = sub(".svg", "", i)
BrowseSVG(NewFile)
}
return(invisible(NULL))
}

SVG2Web()
