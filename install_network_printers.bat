REM This script installs printer drivers and sets up a network printer for Windows computers.

REM Create a port with the IP address of the network printer
cscript %WINDIR%\System32\Printing_Admin_Scripts\en-US\Prnport.vbs -a -r IP_10.20.30.40 -h 10.20.30.40 -o raw -n 9100

REM Install the printer driver
rundll32 printui.dll,PrintUIEntry /ia /m "Name of driver" /f "C:\path\to\driver.inf"

REM Set up printer with the port created and the driver installed
rundll32 printui.dll,PrintUIEntry /if /b "Name of printer" /f "C:\path\to\driver.inf" /r "IP_10.20.30.40" /m "Name of driver"
