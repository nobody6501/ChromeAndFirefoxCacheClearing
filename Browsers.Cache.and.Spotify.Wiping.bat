@echo off

if exist C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data goto :chrome

:chrome
set ChromeDir=C:\Users\%USERNAME%\AppData\Local\Google\Chrome\User Data
rd /s /q "%ChromeDir%"

if exist C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles goto :firefox
:firefox
set DataDir=C:\Users\%USERNAME%\AppData\Local\Mozilla\Firefox\Profiles
del /q /s /f "%DataDir%"
rd /s /q "%DataDir%"

for /d %%x in (C:\Users\%USERNAME%\AppData\Roaming\Mozilla\Firefox\Profiles\*) do del /q /s /f %%x\*sqlite


if exist C:\Users\%USERNAME%\AppData\Local\Microsoft\ goto :IE
:IE
set DataDir=C:\Users\%USERNAME%\AppData\Local\Microsoft\Intern~1

rd /s /q "%DataDir%"

set History=C:\Users\%USER
rd /s /q "%History%"

set IETemp=C:\Users\%USERNAME%\AppData\Local\Microsoft\Windows\Tempor~1

REM del /q /s /f "%IETemp%"
rd /s /q "%IETemp%"

set Cookies=C:\Users\%USERNAME%\AppData\Roaming\Microsoft\Windows\Cookies

REM del /q /s /f "%Cookies%"
rd /s /q "%Cookies%"

C:\bin\regdelete.exe HKEY_CURRENT_USER "Software\Microsoft\Internet Explorer\TypedURLs"


if exist C:\Users\%USERNAME%\AppData\Local\Spotify\Storage rmdir /q /s C:\Users\%USERNAME%\AppData\Local\Spotify\Storage
