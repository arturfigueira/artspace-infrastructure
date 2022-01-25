#!/bin/bash

echo "Removing data"
rm -rf ./appusrdb/postgres-data
rm -rf ./streams/data
rm -rf ./cache/redis-data
rm -rf ./postdb/mongo-data
echo "Data Removed"