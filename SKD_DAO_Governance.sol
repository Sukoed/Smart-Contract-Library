// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SKDGovernance {
    struct Proposal {
        string description;
        uint256 voteCount;
        bool executed;
    }

    address public admin;
    Proposal[] public proposals;

    constructor() { admin = msg.sender; }

    function createProposal(string memory _desc) public {
        proposals.push(Proposal({description: _desc, voteCount: 0, executed: false}));
    }

    function vote(uint256 _id) public {
        require(_id < proposals.length, "Invalid ID");
        proposals[_id].voteCount++;
    }
}
