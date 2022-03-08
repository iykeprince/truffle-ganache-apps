// SPDX-License-Identifier: MIT
pragma solidity 0.8.12;

contract PermanentHello {
    string public message;

    constructor(string memory _message) {
        message = _message;
    }
}
