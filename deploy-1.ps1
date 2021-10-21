$resourceGroupName = Read-Host -Prompt "Enter the Resource Group name"
$location = Read-Host -Prompt "Enter the location (i.e. westeurope)"
$adminUsername = Read-Host -Prompt "Enter the administrator username for the VM"
$adminPassword = Read-Host -Prompt "Enter the administrator password for the VM" -AsSecureString

New-AzResourceGroup -Name $resourceGroupName -Location "$location"
New-AzResourceGroupDeployment `
    -ResourceGroupName $resourceGroupName `
    -TemplateFile "C:\Users\a.mdobes\Documents\APARAVI_ARM\azuredeploy.json" `
    -adminUsername $adminUsername `
    -adminPassword $adminPassword `
    -dnsLabelPrefix $dnsLabelPrefix
