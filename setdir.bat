:: the script accepts two parameters: the long class number (e.g. 01)
:: and the short number (e.g. 1)

@echo off

echo \newcommand{\classnum}{%1} > class_parameters.tex
echo \newcommand{\simplenum}{%2} >> class_parameters.tex

copy c:\Documents\Research\Presentations\Template\Class\handout01.tex handout%1.tex

copy c:\Documents\Research\Presentations\Template\Class\q_sheet01.tex q_sheet%1.tex

copy c:\Documents\Research\Presentations\Template\Class\slides01.tex slides%1.tex

copy c:\Documents\Research\Presentations\Template\Class\slides01_handout.tex slides%1_handout.tex

copy c:\Documents\Research\Presentations\Template\Class\slides01_plain.tex slides%1_plain.tex

echo pdflatex slides%1.tex > make.bat
echo pdflatex slides%1_handout.tex >> make.bat
echo latex slides%1_plain.tex >> make.bat
echo pdflatex slides%1_plain.tex >> make.bat
echo pdflatex handout%1.tex >> make.bat
echo pdflatex q_sheet%1.tex >> make.bat
echo copy /Y slides%1.pdf ..\All\Slides\ >> make.bat
echo copy /Y handout%1.pdf ..\All\Handouts\ >> make.bat
echo copy /Y slides%1_handout.pdf ..\All\Handouts1-1\handout%1-1.pdf >> make.bat
echo copy /Y q_sheet%1.pdf ..\All\Q_Sheets\ >> make.bat
