// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract Helloworld {
    string public message;
    address public owner;

    event messageEmitted();

    constructor(string memory _message) {
        message = _message;
        owner = msg.sender;
    }

    function hello() public pure returns (string memory) {
        return "hello, welcome back to solidity. This is only but a test";
    }

    function setMessage(string memory _message) public payable {
        require(
            msg.sender >= owner,
            "Only owner has permission to alter the state"
        );
        message = _message;
        emit messageEmitted();
    }
}
