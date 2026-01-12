// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SKDVault {
    address public owner;
    constructor() { owner = msg.sender; }
    receive() external payable {}
    function getBalance() public view returns (uint256) { return address(this).balance; }
}
