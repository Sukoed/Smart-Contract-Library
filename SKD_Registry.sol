// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SKDRegistry {
    mapping(address => string) public names;
    function register(string memory _name) public {
        names[msg.sender] = _name;
    }
}
// Updated on Jan 12, 2026
