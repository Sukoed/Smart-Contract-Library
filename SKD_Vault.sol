// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SKDGreetings {
    string public message;
    function setMessage(string memory _msg) public { message = _msg; }
}
