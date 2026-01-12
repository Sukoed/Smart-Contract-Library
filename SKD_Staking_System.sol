// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SKDStaking {
    mapping(address => uint256) public stakedBalance;
    mapping(address => uint256) public lastStakedTime;
    uint256 public rewardRate = 100; // 100 units per hour
    uint256 public totalStaked;

    function stake() public payable {
        totalStaked += msg.value;
        require(msg.value > 0, "Amount must be > 0");
        stakedBalance[msg.sender] += msg.value;
        lastStakedTime[msg.sender] = block.timestamp;
    }

    function calculateReward(address _user) public view returns (uint256) {
        uint256 timeStaked = block.timestamp - lastStakedTime[_user];
        return (stakedBalance[_user] * rewardRate * timeStaked) / 3600;
    }
}
