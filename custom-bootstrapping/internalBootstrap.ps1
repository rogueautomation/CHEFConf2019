# Use this Bootstrap command if you can't reach out to the internet for the chef-client download while bootstrapping

knife bootstrap windows winrm YourIPAddress --winrm-user user@domain.com --winrm-password SecurePassword --node-name YourNodeName --run-list 'recipe[your_baseload_cookbook]' --msi-url https://internalsite/chef-client.msi -E yourEnvironmentName