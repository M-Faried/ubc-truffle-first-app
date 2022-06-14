pragma solidity ^0.8.0;

contract Test {
    address owner;
    uint initialBalance;

    function initializeBalance() public {
        initialBalance = owner.balance;
    }
}

