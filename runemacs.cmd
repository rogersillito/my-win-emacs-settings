@REM start emacs server
@ECHO OFF
set emacsdir=%_ToolsDir%\emacs
set HOME=%emacsdir%\config
@REM %emacsdir%\_emacs\bin\runemacs.exe --debug-init %*
%emacsdir%\_emacs\bin\runemacs.exe %*