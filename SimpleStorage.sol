// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract SimpleStorage{// created a simplestorage contract.
    string public text;// created a state var of string named as text.

    function set(string calldata _text) external {
        text = _text;
    }// created a function named "set" that takes string input as "_text" with external visibility and in this funciton we assign value of input _text as state var text.

    function get() external view returns(string memory){//here we used "(string memory)" cause here we are gathering data from memory or state var.
        return text;
    }// we are calling state var test value with return text parameter.
}