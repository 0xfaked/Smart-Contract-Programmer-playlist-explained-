// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract A{
    function foo() public pure virtual returns (string memory){
        return "A";
    }

    function bar() public pure virtual  returns (string memory){
        return "A";
    }

    function baz() public pure returns (string memory){
        return "A";
    }
//In this contract created 3 function foo(), bar(),baz() , foo and bar are virtual functions it means it can be overriden by another contract it means we can modify this function in another contract .

}

contract B is A{ //here we inherited contract A to contract B it means we can use the functions of contract A in contract B. 
    function foo() public pure override  returns (string memory){
        return "B";
    }// In this function we use override , override means we are overriding the functionality of another contracts functions.

    function bar() public pure virtual override returns (string memory){
        return "B";
    }// here we added both virtual & override cause we are both overriding the bar function  from contract A and added virtual cause we are using this function in contract c.


}

contract C is B {
    function bar() public pure override returns (string memory){
        return "V";
    }

}//created contract c inherited contract b to c , bar function overrides bar from contract B, and changes it string.

// suppose we have a contract a and we have to use most of its functionality in contract b by modifying some functions in it so we inherit the contract and how we inherit the contract we say "contract A is B{}" it means contract b can use functionality of contract A. 