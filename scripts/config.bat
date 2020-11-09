@echo off
:: Test Case, (need to modify by myself) 
set TESTPATH=run
set TESTCASE=loadstore

:: Public Configurations Bats
set MARS_PATH=..\Mars
set ASM_PATH=..\asms\%TESTPATH%
set OUT_PATH=..\out
set CHECKER_PATH=..\checker

set MARS=%MARS_PATH%\Mars_modified.jar
set ASM=%ASM_PATH%\%TESTCASE%.asm
set MARS_HEX=%OUT_PATH%\%TESTCASE%.hex
set MARS_MEM=%OUT_PATH%\%TESTCASE%.mars_mem
set MARS_DISP=%OUT_PATH%\%TESTCASE%.mars_disp

:: Checker Path
set DISPLAY_CHECKER=%CHECKER_PATH%\display\displaychecker.exe
set MEMORY_CHECKER=%CHECKER_PATH%\memory\memchecker.exe

set LOGISIM_PROCESSOR=%CHECKER_PATH%\logisim\logisim.exe

:: CPU Outputs
set CPU_DISP=%OUT_PATH%\%TESTCASE%.cpu_disp
set CPU_MEM=%OUT_PATH%\%TESTCASE%.cpu_mem
set LOGISIM_RAM=%OUT_PATH%\%TESTCASE%.logisim_ram
