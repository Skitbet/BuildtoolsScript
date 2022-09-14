@echo off
IF NOT EXIST BuildTools (
    mkdir BuildTools
)
cd BuildTools
curl -z BuildTools.jar -o BuildTools.jar https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
set /p Input=Enter the version: || set Input=latest
java -jar BuildTools.jar --rev %Input%

git config --global user.email "INSERT_EMAIL_HERE"
git config --global commit.gpgsign true
git config advice.addIgnoredFile false

pause
