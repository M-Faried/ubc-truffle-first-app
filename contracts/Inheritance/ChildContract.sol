pragma solidity ^0.8.0;
import "./BaseContract.sol";
import "./IContract.sol";

contract myContract is BaseContract(100), IContract {

    string public contractName;

    constructor(string memory name){
        contractName = name;
    }

    function sendMoney (uint amount, address payable toAddress) external returns(bool) {
        toAddress.transfer(amount);
        return true;
    }

    function getValue() public view returns(uint) {
        return value;
    }
}