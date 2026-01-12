// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SKDLiquidityVault {
    address public owner;
    uint256 public lockTime;

    modifier onlyOwner() { require(msg.sender == owner); _; }

    constructor(uint256 _days) {
        owner = msg.sender;
        lockTime = block.timestamp + (_days * 1 days);
    }

    function deposit() public payable {}

    function withdraw() public onlyOwner {
        require(block.timestamp > lockTime, "Tokens are still locked");
        payable(owner).transfer(address(this).balance);
    }
}
// Updated on Jan 12, 2026
