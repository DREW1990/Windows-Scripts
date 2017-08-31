REM For Microsoft Deployment Toolkit
REM Copy a folder from the Deployment Share folder to the computer being imaged

xcopy.exe "%deployroot%\source\folder\*.*"   "c:\destination\folder\on\imaged\computer" /Q /H /E /I /Y
