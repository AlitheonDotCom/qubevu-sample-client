@echo off
setlocal
set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_07
set WSIMPORT=%JAVA_HOME%\bin\wsimport
set JAVAC=%JAVA_HOME%\bin\javac


"%WSIMPORT%" -keep -extension ..\QubeVuWebService\ScaleService.wsdl
"%WSIMPORT%" -keep -extension ..\QubeVuWebService\QubeVuService.wsdl

"%JAVAC%" -Xlint:unchecked QubeVuSampleClient.java

pause

endlocal