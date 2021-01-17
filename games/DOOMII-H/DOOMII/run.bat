:menu
echo off
cls
echo.
echo Press 1 for Doom II: Hell on Earth w/ SoundBlaster
echo Press 2 for Doom II: Hell on Earth w/ Sound Canvas
echo Press 3 to play Network Multiplayer
echo Press 4 to Quit
echo.
jchoice /C:1234 /N Please Choose:

if errorlevel = 4 goto quit
if errorlevel = 3 goto network
if errorlevel = 2 goto SC55
if errorlevel = 1 goto SB16

:SB16
REM CONFIG -set"mididevice=default"
del DEFAULT.CFG
xcopy .\sb16\*.*
cls
DOOM2
goto quit

:SC55
mt32-pi -g -v
del DEFAULT.CFG
xcopy .\sc55\*.*
cls
DOOM2
goto quit

:network
REM CONFIG -set"mididevice=default"
del DEFAULT.CFG
xcopy .\sb16\*.*
cls
network

:quit
exit