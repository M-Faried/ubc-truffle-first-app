pragma solidity ^0.8.0;

interface IContract {
    function sendMoney(uint ammount, address payable toAddress) external returns (bool);
}