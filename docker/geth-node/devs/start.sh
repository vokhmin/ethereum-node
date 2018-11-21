#!/bin/sh

set echo on

ETH_BASE="7f34a023fa2e16559ec7b6066491c17d73531736"
ETH_DEFAULT="42ffc349ca3b856da57428580baa61a9d8dc0eb3"

CONFIG=" --port 30303 --nodiscover --maxpeers 0 --ipcpath /tmp/geth.ipc --rpcapi \"db,personal,eth,net,web3\" --rpccorsdomain '*' --rpc --rpcaddr 0.0.0.0 --rpcvhosts=* --nat any --mine --miner.threads 1 --miner.etherbase $ETH_BASE --verbosity 4 "
UNLOCK=" --unlock $ETH_BASE --password /root/password "

echo "Geth OPTS='$OPTS'"
echo "Geth CONFIG='$CONFIG'"
echo "Geth UNLOCK='$UNLOCK'"

# geth $CONFIG 2> $ETH_DATA/geth.log
#nohup geth $CONFIG > $ETH_DATA/geth.log &
#echo "Geth has stared, see Logs at $ETH_DATA/geth.log"

geth $OPTS $CONFIG $UNLOCK
