@REM start emacs client
@echo off
set emacsdir=%_ToolsDir%\emacs
set HOME=%emacsdir%\config
echo %emacsdir%\_emacs\bin\emacsclientw.exe --alternate-editor=notepad.exe --server-file=%HOME%\.emacs.d\server\server --no-wait %~1 %2
%emacsdir%\_emacs\bin\emacsclientw.exe --alternate-editor=notepad.exe --server-file=%HOME%\.emacs.d\server\server --no-wait %~1 %2

@REM focus emacs window
C:
cd %_DevTools%\AhkScripts
%_ToolsDir%\autohotkey\autohotkey.exe EmacsWinActivate.ahk