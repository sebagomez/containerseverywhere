@ECHO OFF
IF "%LINUX_DISPLAY%" == "" GOTO NODISPLAY
:YESPATH
docker run -it --rm -e DISPLAY=%LINUX_DISPLAY%:0.0 -d --name %1 %1
GOTO END
:NODISPLAY
ECHO The LINUX_DISPLAY environment variable was NOT detected, it's your IP address.
GOTO END
:END
