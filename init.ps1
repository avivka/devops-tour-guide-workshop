# Login to Azure
Connect-AzAccount

# Create a new Azure subscription
$subscriptionName = "MyName-sub"
New-AzSubscription -Name $subscriptionName

# Set the subscription context
$subscription = Get-AzSubscription -SubscriptionName $subscriptionName
Set-AzContext -SubscriptionId $subscription.Id

# Create a new resource group
$resourceGroupName = "MyName-rg"
$location = "EastUS"
New-AzResourceGroup -Name $resourceGroupName -Location $location

# Create a new AKS cluster
$aksClusterName = "MyName-aks"
$nodeCount = 3
New-AzAksCluster -ResourceGroupName $resourceGroupName -Name $aksClusterName -NodeCount $nodeCount -Location $location
