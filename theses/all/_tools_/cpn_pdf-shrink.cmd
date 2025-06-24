@echo off

rem ***************************************************************************
rem * author: Christoph Peter Neumann
rem ***************************************************************************

cd /d "%~dp0"

for %%F in (*.pdf) do (
	echo "INFO: handle "%%~nF" ===================================="
	cmd /D/C C:\PROGRA~1\gs\gs9.55.0\bin\gswin64c.exe -sDEVICE=pdfwrite -dCompatibilityLevel=1.4 -dPDFSETTINGS=/ebook -dNOPAUSE -dBATCH -dColorImageResolution=200 -sOutputFile="%%~dpnF_shrinked%%~xF.gs" "%%~dpnxF"
)
rem Remove temp extension:
for %%F in (*.gs) do (
	mv "%%~dpnxF" "%%~dpnF"
)
pause