:menu
echo off
cls
echo.
echo Press 1 for Street Fighter II w/ SoundBlaster
echo Press 2 for Street Fighter II w/ MT-32
echo Press 3 to Quit
echo.
jchoice /C:123 /N Please Choose:

if errorlevel = 3 goto quit
if errorlevel = 2 goto MT32
if errorlevel = 1 goto SB16

:SB16
REM CONFIG -set"mididevice=default"
xcopy .\sb16\*.* .\
cls
sf2
goto quit

:MT32
mt32-pi -m -v
xcopy .\mt32\*.* .\
cls
sf2
goto quit

:quit
exit