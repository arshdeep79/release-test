@echo off
REM Move to script directory (project root if script is placed there)
cd /d "%~dp0"

REM Validate argument
if "%~1"=="" (
  echo Usage: %~nx0 ^<fix^|feat^>
  exit /b 1
)
set "ARG=%~1"
if /I NOT "%ARG%"=="fix" if /I NOT "%ARG%"=="feat" (
  echo Argument must be 'fix' or 'feat'
  exit /b 1
)

REM Write timestamp to noise.txt (append)
for /f "tokens=*" %%A in ('powershell -NoProfile -Command "Get-Date -Format o"') do set "TS=%%A"
echo %TS%>>noise.txt
echo Wrote timestamp: %TS% to noise.txt

REM Stage and commit
git add --all
git commit -am "%ARG%: changes"

if ERRORLEVEL 1 (
  echo Git command failed with exit code %ERRORLEVEL%
  exit /b %ERRORLEVEL%
)
echo Commit complete.
