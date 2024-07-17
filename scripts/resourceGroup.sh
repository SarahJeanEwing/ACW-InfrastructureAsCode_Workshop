rg=iac-training-rg-necode
loc=eastus
echo $rg
echo $loc

az group create -n $rg -l $loc
az group exists -n $rg