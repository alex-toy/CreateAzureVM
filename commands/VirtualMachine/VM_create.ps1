################################################################
#CREATE A VM :

az vm create `
   --resource-group $RGName `
   --name $VMName `
   --location $RGLocation `
   --image $ImageName `
   --size $Size `
   --admin-username $AdminUsername `
   --generate-ssh-keys `
   --verbose
 #  --os-disk-size-gb 63
   #--storage-sku $storageSku `


#open port 80 to allow outside traffic to our VM
az vm open-port `
    --port $Port `
    --resource-group $RGName `
    --name $VMName



#Reset password
# az vm user update `
#   -n $VMName `
#   -g $ResourceGroupName `
#   -u $AdminUsername `
#   -p ""






