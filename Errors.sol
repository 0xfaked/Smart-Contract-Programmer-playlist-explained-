//SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract Errors{
    function testRequire(uint _i) public pure {
        require(_i <= 10, "i > 10");//it means that this logic should be true and if not throw this error.

    }
    function testRevert(uint _i) public pure {
       if (_i > 10){
           revert("i > 10");
       } // here we are saying that if this condition met throw this error.


    }  uint public num = 123;

    function testAssert()public view{
        assert(num == 123);//we use assert to check for conditions that should always be equal to true, if in case this condition is not true then contract will throw an error or have bugs in it.
    }  

    //Custom Errors
    error myerror();

    function foo(uint _i) public view {
        if ( _i > 10){
            revert myerror();
        }
    }
}

/**
gas refund :- if we added an condition and if it encounters an error(revert,assert,require) the task will be undone and will refund the unspend gas.
**/