@echo off

rem ***************************************************************************
rem * author: Christoph P. Neumann
rem ***************************************************************************
cd /d "%~dp0"

for %%I in (*.dotx) do (del "%%~dpnI.pdf" 2> nul)

for /f "usebackq delims=|" %%I in (`dir /b /O N *.dotx`) do (
	echo == %%~nxI ==
	cmd /D/C officetopdf.exe "%%~dpnxI" "%%~dpnI.pdf" /readonly /print /hidden /noquit /excludeprops /excludetags /pdf_clean_meta full /pdf_layout single /pdf_page_mode none /pdf_owner_pass geheim /pdf_restrict_accessibility_extraction /pdf_restrict_assembly /pdf_restrict_extraction /pdf_restrict_modify
)

pause