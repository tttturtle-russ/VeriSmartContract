pragma solidity 0.5.1; 

contract DEX1_lockedDirectDeposit {
    mapping(address => uint) public balanceX;  
    mapping(address => uint) public balanceY; 
    mapping(address => mapping(address => uint)) public allowanceX;
    mapping(address => mapping(address => uint)) public allowanceY;

    function approveX(address spender, uint amount) public returns (bool) {
            allowanceX[msg.sender][spender] = amount;
            return true;
    }

    function transferFromX(
        address sender,
        address recipient,
        uint amount
    ) public returns (bool) {
        require(allowanceX[sender][address(this)] >= amount);
        allowanceX[sender][address(this)] -= amount;
        balanceX[sender] -= amount;
        balanceX[recipient] += amount;
        return true;
    }

    function transferX(address receiver, uint amount) public returns (bool) {    
        require(amount <= balanceX[msg.sender]);        
        balanceX[msg.sender] = balanceX[msg.sender] - amount;    
        balanceX[receiver] = balanceX[receiver] + amount;    
        return true;  
    }
    function transferY(address receiver, uint amount) public returns (bool) {    
        require(amount <= balanceY[msg.sender]);        
        balanceY[msg.sender] = balanceY[msg.sender] - amount;    
        balanceY[receiver] = balanceY[receiver] + amount;    
        return true;  
    }
    function _transferX(address receiver, uint amount) private returns (bool) {    
        require(amount <= balanceX[address(this)]);        
        balanceX[address(this)] = balanceX[address(this)] - amount;    
        balanceX[receiver] = balanceX[receiver] + amount;    
        return true;  
    }
    function _transferY(address receiver, uint amount) private returns (bool) {    
        require(amount <= balanceY[address(this)]);        
        balanceY[address(this)] = balanceY[address(this)] - amount;    
        balanceY[receiver] = balanceY[receiver] + amount;    
        return true;  
    }
    constructor() public {
        balanceX[address(this)] = 1100;
        balanceY[address(this)] = 1000;
        balanceX[msg.sender] = 1000;    
        balanceY[msg.sender] = 1000;  
    }

    // this low-level function should be called from a contract which performs important safety checks
    function swapXY(uint amount0In, uint amount1In,uint amount0Out, uint amount1Out, address to) public {
        require(amount0Out > 0 || amount1Out > 0, 'UniswapV2: INSUFFICIENT_OUTPUT_AMOUNT');
        require(amount0Out < balanceX[address(this)] && amount1Out < balanceY[address(this)], 'UniswapV2: INSUFFICIENT_LIQUIDITY');
        uint256 balanceX_before = balanceX[address(this)];
        uint256 balanceY_before = balanceY[address(this)];
        transferFromX(msg.sender,address(this),amount0In);
        if (amount1Out > 0) _transferY(to, amount1Out); // optimistically transfer tokens
        require(((balanceX[address(this)]*balanceY[address(this)]) >= uint(balanceX_before*balanceY_before)), 'UniswapV2: K');
    }
}


