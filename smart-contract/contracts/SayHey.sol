// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;


contract SayHey {
    string public message = "Hello";
    
    function setHey(string memory _msg) public {
        message = _msg;
    }

    function getHey() view public returns (string memory) {
        return message;
    }
}