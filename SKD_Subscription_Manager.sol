// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SKDSubscription {
    struct User {
        uint256 expireDate;
        bool isActive;
    }

    mapping(address => User) public subscribers;
    uint256 public planPrice = 0.01 ether;

    function renewSubscription() public payable {
        require(msg.value == planPrice, "Incorrect price");
        subscribers[msg.sender].expireDate = block.timestamp + 30 days;
        subscribers[msg.sender].isActive = true;
    }

    function checkStatus(address _user) public view returns (bool) {
        return subscribers[_user].expireDate > block.timestamp;
    }
}
