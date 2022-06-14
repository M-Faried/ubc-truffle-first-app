pragma solidity ^0.8.0;

contract Arrays {
    // There are static arrays and dynamic arrays

    //Static Arrays are fixed size while in dynamic arrays, the size can be changed at any time during the runtime.
    bool[10] staticArray;
    bool[] dynamicArray;

    // Dynamic arrays can't be defined as memory vairables. Dynamic arrays are only stored in storage.

    function getSomething() public view {
        
        // How to initialize a dynamic array.
        // dynamicArray = new bool[](8); // This won't compile as dynamic arrays can't be initialized in view functions which are not suppozed to alter the state of the contract.

        uint8 sLength = uint8(staticArray.length);
        uint8 dLength = uint8(dynamicArray.length);

        // staticArray.length = 6; // Won't work
        // dynamicArray.length = 7; // Won't work either

        // uint8[] memory arr = [1, 2, 3]; // Compiler error.
        uint8[] memory arr2; // This is ok as it is static and in memory arrays.
        // arr2.push(3);// This won't compile since push is not available outside of storage arrays.

        
        // uint8[] storage arr3 = new uint8[](3); // This will not compile as you initialize a statis array using the dynamic way of initializtion.
        // arr3.push(4); // This will work fine as the array is declared as dynamic storage array.

        uint8[] memory dynamicMemoryArray;
        // dynamicMemoryArray = [uint8(1), 2]; // This won't work because we used the static method to init a dynamic array.
    }

}