# Grad Tech Test - PowerShell

## Clone this repository

Use `git clone` to clone the repository locally, then change the remote, please do not fork this repository. To change the remote, use

```powershell
git remote set-url origin https://github.com/Ayselin/GradTechMedal.git
git push -u origin master
```

## Setup

Install the pester module for testing: `install-module pester -MinimumVersion 5.0.2 -MaximumVersion 5.0.2`

## To Run Program

To run the tests:

1. `cd powershell`
1. `Import-Module Pester` 
1. Run `. .\medals.ps1` (change filepath delimiter as relevant for your system)
1. Run `invoke-pester .\medals-tests.ps1`
