@echo off
REM Set color to purple
color 0D

REM Display ASCII art
set "script_dir=%~dp0"
set "ascii_art_path=%script_dir%LocalFiles\HackBlox_Art.txt"  REM Adjusted path to LocalFiles folder

if exist "%ascii_art_path%" (
    type "%ascii_art_path%"
) else (
    echo ASCII art file not found: "%ascii_art_path%"
)

REM Set path to the README.md file
set "readme_path=%~dp0LocalFiles\meemstr.github.io-main\README.md"

REM Check if the README.md file exists
if exist "%readme_path%" (
    REM Open the README.md file using the default text editor
    start "" "%readme_path%"
) else (
    echo README.md file not found: "%readme_path%"
)

REM Pause to keep the window open (optional)
pause
