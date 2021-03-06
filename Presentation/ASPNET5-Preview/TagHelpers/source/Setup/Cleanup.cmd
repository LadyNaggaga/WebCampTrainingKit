@echo off
echo.
echo ======================================================
echo Uninstall Visual Studio Code Snippets for the demo
echo ======================================================
echo.

for /f "tokens=2,*" %%a in ('reg query "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Explorer\Shell Folders" /v "Personal" 2^>NUL ^| findstr Personal') do set MyDocuments=%%b

DEL "%MyDocuments%\Visual Studio 2015\Code Snippets\Visual C#\My Code Snippets\TagHelperDemo*.snippet" 2>NUL
DEL "%MyDocuments%\Visual Studio 2015\Code Snippets\JavaScript\My Code Snippets\TagHelperDemo*.snippet" 2>NUL

echo Demo Code Snippets have been removed!
PAUSE
