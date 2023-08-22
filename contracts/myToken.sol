// SPDX-License-Identifier: MIT
pragma solidity >= 0.8.18;

contract MyToken {
    string public constant name = "Udacity Token";

    string public constant symbol = "UDC";

    uint8 public constant decimal = 18;

    uint _totalSupply;


    mapping(address=> uint256) balances;


    mapping (address=> mapping (address=>uint256)) allowance;


    event Transfer(address indexed from, address indexed  to,uint token);

    event Approval(address indexed tokenOwner,address indexed  spender,uint tokens);


    constructor(uint amount) public {
        _totalSupply = amount;
        balances[msg.sender] = amount;
    }


    function totalSupply() public view returns (uint256){
        return _totalSupply;
    }


    function balanceOf(address tokenOwner) public view  returns (uint balance){
        return balances[tokenOwner];
    }


    function transfer(address to,uint tokens) public  returns (bool success){
        if(tokens < 1){
            revert("Not enough Ether provided");
        }

        require(tokens <= balances[msg.sender]);

        balances[msg.sender] = balances[msg.sender] -tokens;
        balances[to] = balances[to] + tokens;
        emit Transfer(msg.sender, to, tokens);

        return true;
    }


    function transferFrom(address from,address to,uint tokens) public returns(bool success){
        balances[from] = balances[from] - tokens;
        allowance[from][msg.sender] = allowance[from][msg.sender] - tokens;
        balances[to] = balances[to] + tokens;
        emit Transfer(from, to, tokens);
        return true;
    }


    function approve(address spender,uint tokens) public returns (bool success){
        allowance[msg.sender][spender] = tokens;
        emit Approval(msg.sender, spender, tokens);
        return true;
    }
}