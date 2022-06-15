pragma solidity ^0.8.0;

contract Funcs {
    string ownerName;
    uint8 ownerAge;

    constructor (string memory name, uint8 age) {
        ownerName = name;
        ownerAge = age;
    }

    function setOwnerInfo(string memory name, uint8 age) public {
        ownerName = name;
        ownerAge = age;
    }

    function secretFunction() private pure {
        // Not available out side of the contract.
        // It doesn't alter or even read the state.
    }

    function getOwnerInfo() public view returns(string memory name, uint8 age) {
        // View means it is not allowed to alter the state. Just can read it.
        name = ownerName;
        age = ownerAge;
    }

    function getOwnerName() public view returns(string memory) {
        return ownerName;
    }

    function getOwnerAge() public view returns (uint8) {
        return ownerAge;
    }
}