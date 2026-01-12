// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SKDMultiSig {
    address[] public owners;
    constructor(address[] memory _owners) { owners = _owners; }
}
// Updated on Jan 12, 2026
