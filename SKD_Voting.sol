// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SKDVoting {
    mapping(string => uint256) public votes;
    function vote(string memory candidate) public {
        votes[candidate] += 1;
    }
}
