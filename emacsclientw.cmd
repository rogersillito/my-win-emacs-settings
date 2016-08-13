@REM start emacs client
@echo off
set emacsdir=%_ToolsDir%\emacs
set HOME=%emacsdir%\config
%emacsdir%\_emacs\bin\emacsclientw.exe --alternate-editor=notepad.exe --server-file=%HOME%\.emacs.d\server\server --no-wait %*
