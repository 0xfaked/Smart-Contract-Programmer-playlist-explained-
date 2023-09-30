// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Immutable{
    address public immutable owner; // this consumes very less gas compares to without immutable keyword. 
    // Immutable means this value will never change in future.

    uint public x;


    constructor(){
        owner = msg.sender;
    }// created a constructor and assigned msg.sender to owner.
    function foo() external {
        require(msg.sender == owner);
        x += 1;
    }// require statement added that we need msg.sender == owner.
}