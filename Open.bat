@echo off
REM Set color to purple
color 0D

REM Function to check for LocalFiles folder and HackBlox_Art.txt in parent directories
:CheckFiles
set "current_dir=%~dp0"
set "local_files_path=%current_dir%LocalFiles"
set "art_file=%local_files_path%\HackBlox_Art.txt"

REM Check if LocalFiles folder exists in the current directory
if exist "%local_files_path%" (
    REM Display ASCII art
    if exist "%art_file%" (
        type "%art_file%"
    ) else (
        echo ASCII art file not found: "%art_file%"
    )
) else (
    REM If LocalFiles folder is not found, move to parent directory and check again
    cd ..
    if not "%current_dir%"=="%cd%" (
        REM Recursive call to CheckFiles function
        call :CheckFiles
    ) else (
        REM Display error message if LocalFiles folder is not found in any parent directory
        echo LocalFiles folder not found in any parent directory.
        pause
        exit /b 1
    )
)

REM Optionally, you can add more commands here to execute after displaying ASCII art
pause
exit /b 0
