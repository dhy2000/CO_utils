@echo off
call config.bat
:: Display and Memory Checker

:: Display Checker
%DISPLAY_CHECKER% %MARS_DISP% %CPU_DISP%

:: Memory Checker
:: %LOGISIM_PROCESSOR% < %LOGISIM_RAM% > %CPU_MEM%
%MEMORY_CHECKER% %MARS_MEM% %CPU_MEM%
