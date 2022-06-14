pragma solidity ^0.8.0;

contract MemoryAllocation {

    // The following are called state variables and are allocated in storage.
    uint count;
    uint[] points;


    function localVariables() public {
        uint[] storage localArray; // If you don't storage, it will be created in storage by default in previous versions.
        uint[] storage localStorageArray;
        uint[] memory  memoryArray; // Located in the memory and not the storage.
        // Creates a reference to the storage array.
        uint[] memory pointer = points;        
    }
}