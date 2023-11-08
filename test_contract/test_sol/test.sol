pragma solidity ^0.5.12;



contract test {

  mapping(address => uint) public balances;

    constructor() public {
        balances[address(0xDeaDbeefdEAdbeefdEadbEEFdeadbeEFdEaDbeeF)] = 1;
    }

  function deposit() public {
    require(balances[msg.sender] >= 1);
    balances[msg.sender] = balances[msg.sender] - 1;
  }


}
