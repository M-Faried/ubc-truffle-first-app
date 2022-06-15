pragma solidity ^0.8.0;

contract Modifiers {
    address private owner;
    uint8 private value = 0;

    modifier ownerOnly {
        if(owner == msg.sender){
            _;
        }
        else{
            revert();
        }
    }

    function onlyOwnerCanCall() public ownerOnly returns(bool result) {
        value = 100;
        result = true;
    }
}