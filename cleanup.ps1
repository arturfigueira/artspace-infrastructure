Write-Output "Removing data"
Remove-Item -Recurse -Force ./coredb/postgres-data
Remove-Item -Recurse -Force ./streams/data
Remove-Item -Recurse -Force ./cache/redis-data
Remove-Item -Recurse -Force ./postdb/mongo-data
Write-Output "Data Removed"