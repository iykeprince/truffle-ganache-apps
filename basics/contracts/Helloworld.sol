// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract Helloworld {
    string public message;

    constructor(string memory _message) {
        message = _message;
    }

    function hello() public pure returns (string memory) {
        return "hello, welcome back to solidity. This is only but a test";
    }

    function setMessage(string memory _message) public payable {
        require(msg.value >= 1 ether, "Condition not met");
        message = _message;
    }
}
