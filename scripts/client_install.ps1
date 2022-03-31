echo some-text  > C:\filename.txt
New-Item -Path "c:\" -Name "logfiles" -ItemType "directory"

# Perform Installation and testing steps here

# Install chocolatey to insall various packages in windows
#Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# choco install -y googlechrome

# choco install -y selenium 

# choco install -y python3

# choco install -y javaruntime 

# choco install -y git.install



#TODO
#Install Chrome browser
#Install Selenium Standalone Server
#Install Python v3
#Install pytest pytest-allure-adaptor packages
#Install Java runtime
#Install Allure for Selenium
#Install Git
#Pull test scripts from Git
#Run tests
#Tear down machine
