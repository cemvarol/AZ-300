#Create a resource group
New-AzureRmResourceGroup -Name EUS-VNets -Location EastUs

#Create a subnet configuration 
$subnetConfig= New-AzureRmVirtualNetworkSubnetConfig `
              -Name EUS-VNet01SN -AddressPrefix 192.168.10.0/25 
           
#Create a virtual network 
$vnet= New-AzureRmVirtualNetwork -ResourceGroupName EUS-VNets -Location EastUS  `
      -Name EUS-VNet01 -Addressprefix 192.168.0.0/16 -Subnet $subnetConfig 
