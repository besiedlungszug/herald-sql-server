#!/usr/bin/env zsh
DOLT_VERSION=$(cat opt/DOLT_VERSION)
while read -r HERALD_VERSION; do
    podman build -t besiedlungszug/herald-sql-server:$HERALD_VERSION --build-arg DOLT_VERSION=$DOLT_VERSION --build-arg HERALD_VERSION=$HERALD_VERSION src
done < <(curl https://www.dolthub.com/api/v1alpha1/besiedlungszug/herald/branches | jq -r '.branches[] | .branch_name' | grep 'release/' | awk -F'/' '{print $2}')
