#!/usr/bin/bash
# get the bitcoin node network name
# grep '"chain"' filters JSON output to find the key-value pair with the text: chain
# cut -d '"' -f 4 uses the double quote as a delimiter to split a line into 4 pieces.
# the 4th piece is the text: regtest
bitcoin-cli -regtest getblockchaininfo | grep '"chain"' | cut -d '"' -f 4
