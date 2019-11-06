#!/bin/sh

./geth init /root/genesis/genesis.json
./geth --bootnodes "enode://$bootnodeId@$bootnodeIp:30301" --networkid="$networkId" --verbosity=4 --rpc --rpcapi "personal,db,eth,net,web3,txpool,miner" --rpcaddr "0.0.0.0" --rpccorsdomain "*" --rpcvhosts=* --syncmode=full --gasprice='1' --targetgaslimit='9000000000000' --mine --etherbase $address --unlock $address --password /root/.ethereum/accountpassword
