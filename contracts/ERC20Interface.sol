pragma solidity ^0.8.0;

interface ERC20Interface {

    // string public constant name = "Udacity Token";
    // string public constant symbol = "UDC";
    // uint8 public constant decimals = 18;  // 18 is the most common number of decimal places

    event Transfer(address indexed from, address indexed to, uint tokens);
    event Approval(address indexed tokenOwner, address indexed spender, uint tokens);

    function totalSupply() external returns (uint);
    function balanceOf(address tokenOwner) external returns (uint balance);
    function transfer(address to, uint tokens) external returns (bool success);
    function transferFrom(address from, address to, uint tokens) external returns (bool success);
    function approve(address spender, uint tokens) external returns (bool success);
    function allowance(address tokenOwner, address spender) external returns (uint remaining);
}