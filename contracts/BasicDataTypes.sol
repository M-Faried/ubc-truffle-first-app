pragma solidity ^0.8.0;

contract BasicDataTypes {
    uint8 a = 255;
    address public owner;
    bool public flag = true;
    uint ownerInitialBalance;
    
    function initFromAddr(address addr) public returns(uint) {
        owner = addr;
        ownerInitialBalance = owner.balance;

        if(1 > 0) {
            // Do something
        }

        return ownerInitialBalance;
    }
}