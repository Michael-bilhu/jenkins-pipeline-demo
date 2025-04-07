@echo off
echo This is a long-running build...
REM Wait for 2 minutes (simulate slow build)
ping 127.0.0.1 -n 120 > nul
echo Done!
