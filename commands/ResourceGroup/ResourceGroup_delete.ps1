################################################################
#DELETE ALL RESOURCES :

#The quickest way to delete all resources is to delete the resource group
az group delete -n $RGName

az group delete -n NetworkWatcherRG

#az group delete --name $RGName --no-wait