@echo off
set back=%~dp0
mode con cols=70 lines=20
chcp 65001
title START X11 Pour KLMSC

rem Crée par Kuroakashiro

:start
if not exist "C:\Program Files (x86)\Xming" start https://downloads.sourceforge.net/project/xming/Xming/6.9.0.31/Xming-6-9-0-31-setup.exe?ts=gAAAAABinRspmpSKFIXCtOj0x3uFzBf04Qnhwlcjdh8C3FKLF2lfQ7uNiObemw9ls7HlRU-_htwnQpqYSrkdOFgETdXH8QBY2Q%3D%3D&r=https%3A%2F%2Fsourceforge.net%2Fprojects%2Fxming%2Ffiles%2Flatest%2Fdownload & explorer %USERPROFILE%\Downloads & goto install

cd "C:\Program Files (x86)\Xming"
cls
echo start
start unins000.exe
exit


:install
cd %USERPROFILE%\Downloads
cls
echo en atente
if not exist "Xming-6-9-0-31-setup.exe" goto install
echo start luncher
"Xming-6-9-0-31-setup.exe"
del "Xming-6-9-0-31-setup.exe"
exit
