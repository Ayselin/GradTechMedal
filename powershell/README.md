# Welcome to my submission for the ECS Technical Test! Grad Tech Test - PowerShell

You will find my solution in [medals.ps1]


## Clone this repository

Use `git clone` to clone the repository locally, then change the remote, please do not fork this repository. To change the remote, use

```powershell
git remote set-url origin https://github.com/Ayselin/GradTechMedal.git
git push -u origin master
```

## Setup

Install the pester module for testing: `install-module pester -MinimumVersion 5.0.2 -MaximumVersion 5.0.2`


## To Run Program

* `. .\medals.ps1`
* `Build-MedalTable $MedalResults`


## To run the tests:

* `pwsh`
* `cd powershell`
* `Import-Module Pester` 
* `. .\medals.ps1`
* `invoke-pester`


