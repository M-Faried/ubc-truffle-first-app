pragma solidity ^0.8.0;

contract ExceptionContract {
    string public lastCaller = "none";

    function reverBehavior(string memory name) public returns(bool) {
        lastCaller = name;

        // Even if the last caller name was changed in the previous line, the revert function will 
        // revert state change as well.        
        if(bytes(name).length == 0) //Bytes is needed since we don't have a length property in the string.
            revert();

        // This line is basically the same as the previous and will roll back any changes as well.
        require(bytes(name).length > 0);
        
        // This will not reached if the previous condition is acieved.
        return true;
    }
}