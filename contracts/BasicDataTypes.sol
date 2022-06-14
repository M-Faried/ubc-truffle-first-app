pragma solidity ^0.8.0;

contract BasicDataTypes {
    // The size can be increased in 8 increments.
    uint8 a = 255;

    // The size of the address is 20 bytes.
    address public owner;
    
    // This is the same as int256
    int number;

    // The following is 16 bit and can hold a value up to 255
    int8 number2; 
    
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