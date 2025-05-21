@echo off
color a
color 2
color 4
color 5
goto otherstart
:otherstart
cls
color 5
echo Commands: wifi, files, start_game
set /p usrinp=Enter command: 
pause

if "%usrinp%"=="wifi" (
    goto thing1
) else if "%usrinp%"=="dir/s" (
    color a
    dir /s
    pause
    goto otherstart
) else if "%usrinp%"=="start_game" (
	start "ngg.vbs" "C:\Users\NELI\Desktop\Tool_XMode\ngg.vbs"
    goto otherstart
) else (
    echo Invalid command. Please try again.
	pause
    goto otherstart
)

:thing1
echo Locating networks...
netsh wlan show networks
pause
goto otherstart