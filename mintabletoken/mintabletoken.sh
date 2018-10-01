


eosiocpp -o /eosdev/mintable.token/mintable.token.wast /eosdev/mintable.token/mintable.token.cpp && eosiocpp -g /eosdev/mintable.token/mintable.token.abi /eosdev/mintable.token/mintable.token.hpp

cleos create account eosio minttoken EOS7ckzf4BMgxjgNSYV22rtTXga8R9Z4XWVhYp8TBgnBi2cErJ2hn EOS7ckzf4BMgxjgNSYV22rtTXga8R9Z4XWVhYp8TBgnBi2cErJ2hn
cleos create account eosio tokenholder EOS7ckzf4BMgxjgNSYV22rtTXga8R9Z4XWVhYp8TBgnBi2cErJ2hn EOS7ckzf4BMgxjgNSYV22rtTXga8R9Z4XWVhYp8TBgnBi2cErJ2hn

cleos set contract minttoken /eosdev/mintabletoken

cleos push action minttoken create '["tokenholder", "GGR", 4]' -p minttoken
cleos push action minttoken issue '["tokenholder", "100.00 GGR", "memo"]' -p tokenholder