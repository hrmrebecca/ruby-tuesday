cls
@echo off

rem SBREDrv.sys MUST be copied to system32 (there could be a mismatch with existing installed binaries)
rem sbbd.exe MUST be copied to system32 (there could be a mismatch with existing installed binaries)
rem sbrc.exe will be run from its current location

if /i "%PROCESSOR_ARCHITECTURE%" == "AMD64" goto amd64

if /i "%PROCESSOR_ARCHITEW6432%" == "AMD64" goto wow64

if /i "%PROCESSOR_ARCHITECTURE%" == "x86" goto x86

goto unknown

:amd64
echo [AMD64]
echo Copy 64-bit rootkit engine driver to system folder
copy x64\SBREDrv.sys "%SystemRoot%\system32\drivers\SBREDrv.sys"
echo Copy 64-bit boot time scanner to system folder
copy x64\sbbd.exe "%SystemRoot%\system32\sbbd.exe"
goto scan

:wow64
echo [WOW64]
echo Copy 64-bit rootkit engine driver to system folder
copy x64\SBREDrv.sys "%SystemRoot%\sysnative\drivers\SBREDrv.sys"
echo Copy 64-bit boot time scanner to system folder
copy x64\sbbd.exe "%SystemRoot%\sysnative\sbbd.exe"
goto scan

:x86
echo [X86]
echo Copy 32-bit rootkit engine driver to system folder
copy SBREDrv.sys "%SystemRoot%\system32\drivers\SBREDrv.sys"
echo Copy 32-bit boot time scanner to system folder
copy sbbd.exe "%SystemRoot%\system32\sbbd.exe"
goto scan

:unknown
echo Unsupported architecture
goto :eof

:scan
cmd /k VIPRERescueScanner.exe
