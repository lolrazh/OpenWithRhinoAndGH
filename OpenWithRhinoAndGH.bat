@echo off
setlocal enabledelayedexpansion

:: extract file extension
for %%i in (%1) do set ext=%%~xi

:: extract file name
for %%i in (%1) do set name=%%~ni

:: set directory
for %%i in (%1) do set dir=%%~dpi

:: check file extension and run command
if "!ext!"==".3dm" (
    if exist "!dir!!name!.gh" (
        "INSERT RHINO.EXE PATH HERE" /nosplash /runscript="-grasshopper editor load document open !dir!!name!.gh" "%1"
    ) else (
        "INSERT RHINO.EXE PATH HERE" /nosplash "%1"
    )
)

if "!ext!"==".gh" (
    if exist "!dir!!name!.3dm" (
        "INSERT RHINO.EXE PATH HERE" /nosplash /runscript="-grasshopper editor load document open %1" "!dir!!name!.3dm"
    ) else (
        "INSERT RHINO.EXE PATH HERE" /nosplash /runscript="-grasshopper editor load document open %1"
    )
)

endlocal
