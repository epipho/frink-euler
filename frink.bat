@echo off
REM Script to start Frink in command-line mode on windows.

REM ---------------Configurable parameters begin----------------

REM Replace this with the full path to your java executable
SET JAVA=java

REM Replace this with the path to your frink.jar file
SET FRINKJAR=%~dp0\frink.jar
REM ---------------Configurable parameters end------------------

REM If you only have the Java Virtual Machine installed, you may not have the
REM Server virtual machine installed.  The server virtual machine is used when
REM invoking Frink with command-line arguments (e.g. the name of a program.)
REM This takes somewhat longer startup time, but makes programs run about
REM twice as fast.  If you don't have the Server VM installed,remove the 
REM -server option below.

REM Check to see if arguments were passed
if xyz%1zyx == xyzzyx goto NOARG

REM If we're running with arguments, 
"%JAVA%" -server -Xmx192M -cp "%FRINKJAR%" frink.gui.FrinkStarter %1 %2 %3 %4 %5 %6 %7 %8 %9
goto END

:NOARG
"%JAVA%" -Xmx64M -cp "%FRINKJAR%" frink.gui.FrinkStarter %1 %2 %3 %4 %5 %6 %7 %8 %9

:END
