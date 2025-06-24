@echo off

rem ***************************************************************************
rem * author: Christoph Peter Neumann
rem ***************************************************************************
cd /d "%~dp0"

for %%I in (*.doc)  do (del "%%~dpnI.pdf" 2> nul)
for %%I in (*.docx) do (del "%%~dpnI.pdf" 2> nul)
for %%I in (*.ppt)  do (del "%%~dpnI.pdf" 2> nul)
for %%I in (*.pptx) do (del "%%~dpnI.pdf" 2> nul)
for %%I in (*.xls)  do (del "%%~dpnI.pdf" 2> nul)
for %%I in (*.xlsx) do (del "%%~dpnI.pdf" 2> nul)

pause