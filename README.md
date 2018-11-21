# ethereum-node

To start the Ethereum-Go node:

    $ docker-compose up -d
  
To build the Solidity project:

    $ docker-compose-truffle up
  
To use _truffle_ in the interactive mode:

    ⇒  docker-compose -f docker-compose-truffle.yml run truffle3 bash
    
    root@1555bd252683:/project# truffle test
    
    Compiling ./contracts/ConvertLib.sol...
    Compiling ./contracts/MetaCoin.sol...
    Compiling ./contracts/Migrations.sol...
    Compiling ./test/TestMetacoin.sol...
    Compiling truffle/Assert.sol...
    Compiling truffle/DeployedAddresses.sol...
    
      TestMetacoin
        ✓ testInitialBalanceUsingDeployedContract (54ms)
        ✓ testInitialBalanceWithNewMetaCoin (56ms)
    
      Contract: MetaCoin
        ✓ should put 10000 MetaCoin in the first account
        ✓ should call a function that depends on a linked library
        ✓ should send coin correctly (76ms)
    
      5 passing (723ms)
    
    root@1555bd252683:/project# 
  
