@echo off
title SpigotMC BuildTools Builder
set /p Version=Enter the version: || set Version=latest
set /p Path=Path to java:
IF NOT EXIST %Version% (
    mkdir %Version%
)
cd %Version%
curl -z BuildTools.jar -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
%Path% -jar BuildTools.jar --rev %Version%
cls
echo "Done!"
pause
