#!/usr/bin/bash

#
# Creates the external docker networks needed 
#(uptimekuma needs access to them to monitor so they are made external) 
#

networks=(
  "proxiable"
  "authentik-db"
  "bookstack-db"
  "ghost-db"
  "hedgedoc-db"
  "kanban-db"
  "keygen"
  "zipline-db"
)

for network in "${networks[@]}"
do 
  docker network create -d bridge "$network"
done