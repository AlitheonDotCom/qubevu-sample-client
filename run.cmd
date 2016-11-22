@echo off
setlocal
set JAVA_HOME=C:\Program Files\Java\jdk1.7.0_07
set JAVA=%JAVA_HOME%\bin\java

"%JAVA%" QubeVuSampleClient %*

endlocal