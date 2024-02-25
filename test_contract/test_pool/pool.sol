pragma solidity ^0.5.12;


contract myToken {

  mapping(address => uint) public balances;

    constructor() public {
        balances[address(0xDeaDbeefdEAdbeefdEadbEEFdeadbeEFdEaDbeeF)] = 1;
    }

  function deposit() public {
    balances[address(0xDeaDbeefdEAdbeefdEadbEEFdeadbeEFdEaDbeeF)] = balances[address(0xDeaDbeefdEAdbeefdEadbEEFdeadbeEFdEaDbeeF)] - 1;
  }

    function getBalance() public view returns (uint) {
    return balances[address(0xDeaDbeefdEAdbeefdEadbEEFdeadbeEFdEaDbeeF)];
  }

}


contract myPool {

    myToken token_1 = new myToken();

  function test() public {
    token_1.deposit();
  }


    function getBalance() public view returns (uint) {
    return token_1.getBalance();
  }

}
