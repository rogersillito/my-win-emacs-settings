@ECHO OFF
ECHO NB: To avoid carnage - first pause Google Drive?
CHOICE /C NY /M "REINSTALL: Are you sure"
IF ERRORLEVEL ==2 GOTO REINSTALL
IF ERRORLEVEL ==1 GOTO END

:REINSTALL
SET INSTDIR=config\.emacs.d
SET BAKDIR=.emacs.d-BAK

IF EXIST %BAKDIR% RMDIR %BAKDIR% /S /Q
MKDIR %BAKDIR%
ROBOCOPY %INSTDIR% %BAKDIR% /S /SEC
RMDIR /S /Q %INSTDIR%
@ECHO ON
git clone https://github.com/syl20bnr/spacemacs %INSTDIR%
@ECHO OFF
ECHO Replacing previous server & cache dirs...
ROBOCOPY %BAKDIR%\.cache %INSTDIR%\.cache /S /SEC
ROBOCOPY %BAKDIR%\server %INSTDIR%\server /S /SEC
ECHO All done
PAUSE

:END