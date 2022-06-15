pragma solidity ^0.8.0;

contract BaseContract {
    uint internal value;

    constructor(uint amount) {
        value = amount;
    }

    function deposit(uint amount) public {
        value += amount;
    }

    function withdraw(uint amount) public {
        value -= amount;
    }
}


