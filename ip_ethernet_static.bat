@echo off
IF [%1]==[] (ECHO Please enter the last numbers of the IP address as arguments to this batch file. Eg. ip_ethernet_static 41.
GOTO End)
netsh interface ip set address name="Local Area Connection" static 192.168.0.%1 255.255.255.0
:End