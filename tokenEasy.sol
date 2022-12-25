// SPDX-License-Identifier: MIT
pragma solidity 0.8.13;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

 contract tokenEasy is ERC20("NewCryptoToken", "NCT") {
     address public owner;

     constructor(){
        owner = msg.sender;
     }

     modifier onlyOwner{
        require(msg.sender == owner, "Cannot mint tokens because not owner of contract.");
        _;
     }

     function mintTokens(uint amount) public onlyOwner {
         _mint(msg.sender, amount);
     }
 }
