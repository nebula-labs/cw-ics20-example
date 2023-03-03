#!/bin/bash

cd build/planets
source vars.sh aura juno

CONTRACT_ADDRESS=$1
ACCOUNT="test"
SLEEP_TIME="15"
KEYRING="test"

QUERY_MESSAGE=$(jq --null-input '{"balance":{"address":"aura1xrj7hrjg86fdd9ct7j4dluusgd6geghhewassh"}}')

RES=$(${BINARY[0]} query wasm contract-state smart "$CONTRACT_ADDRESS" "$QUERY_MESSAGE" --node "${NODE[0]}" --chain-id "${CHAINID[0]}" --output json)
echo $RES