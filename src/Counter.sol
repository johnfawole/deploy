// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

 import {ERC20} from "solmate/tokens/ERC20.sol";

contract Counter  is ERC20{
    uint256 public number;

 constructor(
    string memory name,
    string memory symbol,
    uint8 decimals,
    uint256 initialSupply
 )

 ERC20(name, symbol, decimals) {
    _mint(msg.sender, initialSupply);
 }

    function setNumber(uint256 newNumber) public {
        number = newNumber;
    }

    function increment() public {
        number++;
    }
}
