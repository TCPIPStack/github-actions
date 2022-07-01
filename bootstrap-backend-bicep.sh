RG_NAME=github-actions-tfstate
az group create -n $RG_NAME -l westeurope
az deployment group create --resource-group $RG_NAME --template-file tfbackend.bicep
