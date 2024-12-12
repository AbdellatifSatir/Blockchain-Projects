// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

// contract Greeter {
//     string public greeting = "Hello";

//     function setGreeting(string memory _greeting) public {
//         greeting = _greeting;
//     }

//     function greet() view public returns (string memory) {
//         return greeting;
//     }
// }

contract SayHey {
    string public message = "Hello";
    
    function setHey(string memory _msg) public {
        message = _msg;
    }

    function getHey() view public returns (string memory) {
        return message;
    }
}