@echo off

rem ***************************************************************************
rem * author: Christoph Peter Neumann
rem ***************************************************************************
cd /d "%~dp0"

cmd /D/C officetopdf.exe "%~dpnx1" "%~dpn1.pdf" /readonly /print /hidden /noquit /excludeprops /excludetags /pdf_clean_meta full /pdf_layout single /pdf_page_mode none /pdf_owner_pass geheim /pdf_restrict_accessibility_extraction /pdf_restrict_assembly /pdf_restrict_extraction /pdf_restrict_modify

rem pause