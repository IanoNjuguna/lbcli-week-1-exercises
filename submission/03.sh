#!/usr/bin/bash
# start the background daemon
bitcoind -regtest -daemon
echo "waiting 10 seconds for the daemon to start"
sleep 10
# get the bitcoin node latest block height 
bitcoin-cli -regtest getblockcount
