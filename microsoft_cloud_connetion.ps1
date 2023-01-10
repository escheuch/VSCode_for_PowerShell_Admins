Get-ExecutionPolicy -List

Set-ExecutionPolicy -ExecutionPolicy Unrestricted -Force

Install-Module -Name Az -AllowClobber -Verbose -Force

Import-Module -Name Az

Connect-AzAccount -TenantId f195a009-8edf-4e13-b15d-ea6d8a775027

Get-AzSubscription