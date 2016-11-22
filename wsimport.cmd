@echo off
setlocal
set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_07
set WSIMPORT=%JAVA_HOME%\bin\wsimport

"%WSIMPORT%" -keep -extension ..\QubeVuWebService\ScaleService.wsdl
"%WSIMPORT%" -keep -extension ..\QubeVuWebService\QubeVuService.wsdl

endlocal

