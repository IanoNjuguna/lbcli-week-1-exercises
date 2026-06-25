#!/usr/bin/bash
# Generate a legacy address.
bitcoin-cli -regtest -rpcwallet=builderswallet_0 getnewaddressn "" legacy
