#!/usr/bin/bash
# create wallet
bitcoin-cli -regtest createwallet "builderswallet" > /dev/null 2>&1

# get an address for the wallet
ADDR=$(bitcoin-cli -regtest -rpcwallet=builderswallet getnewaddress)

# mine 101 blocks to mature the first block reward
bitcoin-cli -regtest -rpcwallet=builderswallet generatetoaddress 101 $ADDR

# check the total amount in the wallet.
bitcoin-cli -regtest -rpcwallet=builderswallet getbalance
