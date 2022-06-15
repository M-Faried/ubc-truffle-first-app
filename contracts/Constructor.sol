pragma solidity ^0.8.0;

contract ConstructorExample {
    uint public amount;

    constructor(uint value) {
        amount = value;
    }
}