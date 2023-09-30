//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract IfElse{
    function example(uint _x) external pure returns (uint) {
        if (_x < 10){
            return 1;
        }else if (_x > 20){
            return 2;
        }else{
        return 3;
        }
    }
    /** 
    The code is very simple first we are taking input from user with "_x" it is an external function and it returns uint and added pure func to ensure that it should not modify state data.
    then we are saying if input is smaller than 10 print 1 , else if input is greater than 20 print 2 and else print 3.
    **/

    function ternary(uint _x) external pure returns(uint){
        return _x < 10 ? 1 : 2;// we have written the if else statement in one line with ternary operator, it logic says that return 1 if input is smaller 10 & if its not return 2;
    } 


}