#Require -Modules Azure.Storage

param(
    [string] $ConnectionString
)



$context = New-AzureStorageContext  -ConnectionString $ConnectionString
Get-AzureStorageBlobContent -Context $context -Container "binaries" -Blob "UiPathStudio.msi" -Destination "C:\Temp" -Force

