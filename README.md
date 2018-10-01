

# Mintable Token
EOSIO token with no maximum supply. Instead of sending the maximum supply to the 'create' action, you can pass the string symbol and the precision.

```
cleos push action minttoken create '["tokenholder", "GGR", 4]' -p minttoken
```

Everything else works the same.

# To build Docker
docker-compose build

# To run containers
docker-compose up -d

# To unlock wallet (use your password)
docker exec -it mintabletoken_nodeosd_1 /opt/eosio/bin/cleos -u http://nodeosd:8888 --wallet-url http://keosd:8900 wallet unlock --password <pw>

# To view live logs
docker logs -f mintabletoken_nodeosd_1

# Setup the following aliases
alias cleos='docker exec -it mintabletoken_nodeosd_1 /opt/eosio/bin/cleos -u http://nodeosd:8888 --wallet-url http://keosd:8900'
alias eosiocpp='docker exec -it mintabletoken_nodeosd_1 eosiocpp'

# Here is the command to compile
eosiocpp -g /eosdev/mintabletoken/mintabletoken.abi /eosdev/mintabletoken/mintabletoken.hpp && eosiocpp -o /eosdev/mintabletoken/mintabletoken.wast /eosdev/mintabletoken/mintabletoken.cpp

