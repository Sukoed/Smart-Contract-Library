// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SKDToken {
    string public name = "SKD Asset";
    string public symbol = "SKDA";
    uint256 public totalSupply = 1000000;
    mapping(address => uint256) public balances;

    constructor() {
        balances[msg.sender] = totalSupply;
    }
}
