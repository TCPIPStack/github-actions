
param containerName string = 'tfstate'
param storageAccountName string = 'tfstate-storage'


resource storageAccount 'Microsoft.Storage/storageAccounts@2021-09-01' = {
  name: storageAccountName
  location: resourceGroup().location
  sku: {
    name: 'Standard_LRS'
  }
  kind: 'StorageV2'
  properties: {
    accessTier: 'Hot'
  }
}

// Create container
resource container 'Microsoft.Storage/storageAccounts/blobServices/containers@2021-09-01' = {
  name: containerName
  properties: {
    publicAccess: 'None'
    metadata: {}
  }
}


