// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

contract tokenHard{
    mapping(address => uint) public balances;
    string public name = "NewCryptoToken";
    string public symbol = "NCT";
    uint public totalSupply = 0;

    address public owner;

    constructor(){
        owner = msg.sender;
    }

    modifier onlyOwner{
        require(msg.sender == owner, "Cannot mint tokens because not owner of contract.");
        _;
    }

    function balanceOf(address _owner) public view returns (uint256 balance) {
        return balances[_owner];
    }

    function addFive() public onlyOwner {
        balances[msg.sender] += 5;
        totalSupply += 5;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(balances[msg.sender] >= _value, "Not enough tokens");
        require(_to != address(0), "Cannot send to 0 address");
        balances[msg.sender] -= _value;
        balances[_to] += _value;
        return true;
    }
}
