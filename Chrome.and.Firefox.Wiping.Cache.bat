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