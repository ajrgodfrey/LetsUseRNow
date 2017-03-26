# Let's Use R Now
### an e-book to support students, especially those who are blind, to use R effectively.


## Introduction 
This e-book has been posted on GitHub because there are two offers to translate sections into other languages. Instructions for doing so will be put in the file called NewLanguage.txt as a reference.

The GitHub repository was created on 2 June 2016 by Jonathan Godfrey; please send me a message if you intend to translate the work into a new language so I can be ready to help out when things aren't going so well. Use a.j.godfrey@massey.ac.nz 

## A note on completeness

The project has been worked on sporadically over the last six years, sometimes faster than I expect, often slower than I'd like. I know some sections are incomplete. If you feel there is room for you to help on some of the English sections then please do offer.

If you want to start a translation project, then again, please offer.



## Changes

### July 2016

- switched the Blind version to use mathjax for representing mathematical expressions. This is because screen reader support for mathematics has really grown over the last six months to a year and I am now ready to say that I am confident users can handle this content.
- made additions to offer more comments specifically targeted to the needs of the blind audience.
- added .gitignore to avoid uploading of HTML and pdf files.
- some clean up to get the SVG links into the RChunk files that they belong to; this should have been done prior to initial upload to GitHub.
- removed some files containing nothing but white space; altered Make*Lang*.bat files accordingly.
- fixed error with \Blind
- added \Sighted
- removed small snippet files that were duplicates, including use of GenericSettings.R file. 


### August 2016
- First chapter of Korean files came in.
- Discovered that we need to alter Sweave() commands to avoid encoding checks.  if we are processing files inside R using the standard Sweave() process; no changes made to any of the batch files are required as the knitr package seems to handle the various encoding variations properly. This was necessary to get Korean files processed correctly. Who knows what havoc this might create...
- added DoAllKorean.bat
- moved the three headline files into Korean folder for separate editing. 
- Need to fix the encoding of the Korean files for processing by LaTeX. These need to be in a utf-8 font. JG did this conversion in NotePad++ with thanks for help going to Chris Tuffley.
- removed use of attach() and detach() on simple plot() commands
- improved the presentation of the R scripts to drop chunks used for purposes of knitr and chapter setup and clean up.

### September 2016
- changed from \epsilon to \varepsilon in formulae. This made reading via mathjax and mathml possible.

### December 2016 (Dublin)
- added links to switch between blind and sighted versions
- switched the creation of SVG to use the rvg package in R. This is definitely an improvement, but we really need to find out how to use the gridSVG package to deliver even better results.


## March 2017

Discovered how to add the alt tags in the HTML versions. 
    - Sorted for title pages of the english versions only.
    - creation of altgraphicx.sty and .4ht required. These sit in the root folder.
    - updated the preamble needed to incorporate the new altgraphicx package.
