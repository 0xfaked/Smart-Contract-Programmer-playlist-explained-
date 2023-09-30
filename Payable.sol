// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract payables{
    address payable public owner;// payable means this state variable or function can send transactions with it and only with it.

    constructor() {
        owner = payable(msg.sender);
    }// created a constructor and said that owner = msg.sender and it is also payable.

    function deposit() external payable {}// created a deposit function that is payable.

    function getBalance() external view returns (uint){
        return address(this).balance;
    }//with this function will get balance of the current address with help of "address(this).balance, remember .balance is inbuilt function.
}