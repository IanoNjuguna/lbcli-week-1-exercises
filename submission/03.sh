#!/usr/bin/bash
# loop until bitcoin-cli responds with a ping
until bitcoin-cli -regtest getblockcount >/dev/null 2>&1; do  
	sleep 1
done
# get the bitcoin node latest block height 
bitcoin-cli -regtest getblockcount
