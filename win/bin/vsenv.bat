@echo off

if "%1" == "8" goto vs8
if "%1" == "9" goto vs9
if "%1" == "" goto vs9
goto error

:vs9
"C:\Program Files\Microsoft Visual Studio 9.0\VC\vcvarsall.bat" x86
goto :eof

:vs8
"C:\Program Files\Microsoft Visual Studio 8\VC\vcvarsall.bat" x86
goto :eof

:error
echo "Unknown VS version: %1"
goto :eof
