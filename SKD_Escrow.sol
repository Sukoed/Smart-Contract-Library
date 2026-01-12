// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SKDEscrow {
    address public arbiter;
    constructor(address _arbiter) { arbiter = _arbiter; }
    function release() public { require(msg.sender == arbiter); }
}
