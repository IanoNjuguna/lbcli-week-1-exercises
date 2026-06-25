#!/usr/bin/bash
# 1. Get an address for your wallet
ADDR=$(bitcoin-cli -regtest -rpcwallet=builderswallet_0 getnewaddress)

# 2. Mine 101 blocks to mature the first block reward
bitcoin-cli -regtest -rpcwallet=builderswallet_0 generatetoaddress 101 $ADDR

# Check the total amount in the wallet.
bitcoin-cli -regtest -rpcwallet=builderswallet_0 getbalance
