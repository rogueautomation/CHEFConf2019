# CHEF Windows Workstation Setup

# Enable Virtualization in BIOS

Write-Host "Enable Virtualization in your BIOS to host VM's on local hardware"

# Install Chocolatey

Set-ExecutionPolicy Bypass -Scope Process -Force; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

# Install Hyper-V

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

# Install Git

choco install git -y

# Install chef-workstation

choco install chef-workstation -y

# Install Slack

choco install slack -y

# Create a chef-repo folder

New-Item -ItemType Directory -Path C:\chef-repo

