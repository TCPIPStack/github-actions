param containerName string = 'tfstate'
param storageAccountName string = 'tfstatestoragefmebu4'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccountName
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  resource blobService 'blobServices' = {
    name: 'default'

    resource container 'containers' = {
      name: containerName
    }
  }
}


