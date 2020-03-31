#Require -Modules Azure.Storage

param(
    [string] $ConnectionString
)



$context = New-AzureStorageContext  -ConnectionString $ConnectionString

$blob = Get-AzureStorageBlob -Container "binaries" -Blob "UiPathStudio.msi" -context $context

Get-AzureStorageBlobContent -Context $context -Container "binaries" -Blob "UiPathStudio.msi" -Destination "C:\Temp" -Force

