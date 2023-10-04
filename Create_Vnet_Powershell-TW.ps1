Set-Location c:\

Clear-Host

Get-ExecutionPolicy
Set-ExecutionPolicy -ExecutionPolicy RemoteSigned

Install-Module -Name Az -Force -AllowClobber -Verbose

Connect-AzAccount -TenantId f195a009-8edf-4e13-b15d-ea6d8a775027

Get-AzSubscription

New-AzResourceGroup -Name PSResourcenGruppe -Location "WestEurope"

New-AzResourceGroup -Name RG01 -Location "WestEurope"

Remove-AzResourceGroup -Name RG01

get-AzResourceGroup

get-help New-AzResourceGroup 

$virtualNetwork = New-AzVirtualNetwork `
  -ResourceGroupName PSResourcenGruppe `
  -Location "West Europe" `
  -Name MyPSNetzwerk `
  -AddressPrefix 192.168.0.0/16

$subnetConfig = Add-AzVirtualNetworkSubnetConfig `
 -Name Produktion `
 -AddressPrefix 192.168.3.0/24 `
 -VirtualNetwork $virtualNetwork

$virtualNetwork | Set-AzVirtualNetwork
