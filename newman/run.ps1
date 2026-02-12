# Run Postman collection locally via Newman
# Usage: .\newman\run.ps1

$collection = "collections/sample.postman_collection.json"
$environment = "environments/dev.postman_environment.json"

if (!(Test-Path $collection)) { throw "Missing collection: $collection" }
if (!(Test-Path $environment)) { throw "Missing environment: $environment" }

newman run $collection -e $environment