@echo off
title SpigotMC BuildTools Builder
set /p Version=Enter the version: || set Version=latest
set /p JavaPath=Path to java:

IF NOT EXIST "%Version%" (
    mkdir "%Version%"
)
cd "%Version%"
curl -z BuildTools.jar -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
"%JavaPath%" -jar BuildTools.jar --rev %Version%
cls
echo Done!
pause
