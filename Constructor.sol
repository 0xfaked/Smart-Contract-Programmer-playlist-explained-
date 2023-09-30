//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Constructor{
    address public myaddress;
    uint public x;

    constructor(uint _x){
        myaddress = msg.sender;
        x = _x;
    }//In this constructor we have set the value of myaddress to msg.sender, and x to input x. constructor is very simple.
}

// constructor allows us to initialize our state variables, and they can only call onced
