@echo off
:: Mars Assemble, Run and Dump Memory
call config.bat
java -jar %MARS% mc CompactDataAtZero nc a dump .text HexText %MARS_HEX% %ASM%
java -jar %MARS% mc CompactDataAtZero nc dump .data HexText %MARS_MEM% %ASM% > %MARS_DISP%
