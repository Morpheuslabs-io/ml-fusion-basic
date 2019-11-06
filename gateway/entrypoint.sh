#!/bin/sh

./efsn init /fusion-node/genesis.json

./efsn --bootnodes "enode://$bootnodeId@$bootnodeIp:40408" --datadir "/fusion-node" --networkid="$networkId" --verbosity=4 --rpc --wsapi "eth,net,fsn,fsntx" --rpcapi "eth,net,fsn,fsntx" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --wsorigins "*"  --rpcvhosts=* --syncmode=full --gasprice='1' --targetgaslimit='9000000000000'
