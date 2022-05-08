################################################################
# resource Group :
#southcentralus centralus francecentral
$Global:RGLocation = "francecentral"
$Global:RGName = "create-vm-RG"
$Global:application_path = "web"
$Global:var_path = "${application_path}\var.cfg"

#######################################################################
# Steps :

az group create --name $RGName --location $RGLocation

."commands\VirtualMachine\VM_create.ps1"

."commands\VirtualMachine\VM_getIP.ps1"

."commands\VirtualMachine\VM_connect.ps1"