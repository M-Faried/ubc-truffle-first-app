pragma solidity ^0.8.0;

contract Message {
    string myMessage;

    function getMessage() public view returns(string memory) {
        return myMessage;
    }

    function setMessage(string calldata message) public {
        myMessage = message;
    }
}