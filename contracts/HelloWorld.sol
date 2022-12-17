//SPDX-Licence-Identifier: MIT
pragma solidity >=0.5.9 <0.9.0;


contract HelloWorld {

    string public message;
    constructor () public {
        message="Hello World";
    }

    function setMessage(string memory _message) public {
        message = _message;
    }
}